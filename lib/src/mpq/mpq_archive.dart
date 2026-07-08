/// MPQ 归档读写入口。
///
/// 通过 FFI 调用 StormLib 实现。读用法：
///
/// ```dart
/// final mq = MpqArchive.open('patch-z.MPQ');
/// final dbc = mq.extract(r'DBFilesClient\Item.dbc'); // → Uint8List
/// final loader = DbcLoader.fromBytes(dbc, Item.format);
/// print(mq.files); // 枚举 (listfile)
/// mq.close();
/// ```
///
/// 写用法：
///
/// ```dart
/// final out = MpqArchive.create('out.MPQ', maxFileCount: 16);
/// out.addFile(r'my\test.txt', utf8.encode('hi'), compress: true);
/// out.close();
/// ```
library;

import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';

import 'mpq_exception.dart';
import 'storm_bindings.dart';

/// MPQ 归档。可读可写，由 [open]/[create] 选择模式。
final class MpqArchive {
  MpqArchive._(this._hMpq, this._path, this._writable);

  final StormHandle _hMpq;
  final String _path;
  final bool _writable;
  bool _closed = false;

  /// 压缩标志：与 StormLib 的 `MPQ_COMPRESSION_*` 对应。
  static const int compressZlib = 0x02;
  static const int compressBzip2 = 0x10;

  /// 打开现有 MPQ 归档（默认只读）。
  ///
  /// [readOnly=false] 时以读写模式打开，可用于 [removeFile]/[compact]。
  factory MpqArchive.open(String path, {bool readOnly = true}) {
    final storm = StormLib.instance;
    return using((arena) {
      final name = path.toNativeUtf8(allocator: arena);
      final hMpq = arena<StormHandle>();
      // 读: STREAM_FLAG_READ_ONLY(0x100)，保留内嵌 listfile 以支持 [files] 枚举。
      // 写: 默认读+写（flags=0）。
      final flags = readOnly ? 0x00000100 : 0;
      final ok = storm.openArchive(name, 0, flags, hMpq);
      if (!ok) {
        throw MpqOpenException('打开归档失败: $path', 0);
      }
      return MpqArchive._(hMpq.value, path, !readOnly);
    });
  }

  /// 创建新的空 MPQ 归档。
  ///
  /// [maxFileCount] 为哈希表容量，须≥实际文件数，建议为 2 的幂。
  /// 默认创建带 (listfile)/(attributes) 的 v1 归档（≤4GB），适合 WoW 数据。
  factory MpqArchive.create(
    String path, {
    int maxFileCount = 16,
    int versionFlags = 0x00300000, // CREATE_LISTFILE | CREATE_ATTRIBUTES | ARCHIVE_V1
  }) {
    final storm = StormLib.instance;
    return using((arena) {
      final name = path.toNativeUtf8(allocator: arena);
      final hMpq = arena<StormHandle>();
      final ok = storm.createArchive(
        name,
        versionFlags,
        maxFileCount,
        hMpq,
      );
      if (!ok) {
        throw MpqOpenException('创建归档失败: $path', 0);
      }
      return MpqArchive._(hMpq.value, path, true);
    });
  }

  /// 读取归档内文件为内存字节。
  ///
  /// [name] 为归档内路径，使用 `\` 作为分隔符。
  Uint8List extract(String name) {
    _ensureOpen();
    final storm = StormLib.instance;
    return using((arena) {
      final cname = name.toNativeUtf8(allocator: arena);
      final hFile = arena<StormHandle>();
      // 0 = SFILE_OPEN_FROM_MPQ
      if (!storm.openFileEx(_hMpq, cname, 0, hFile)) {
        throw MpqFileNotFoundException('文件不存在: $name', 0);
      }
      try {
        final sizeHigh = arena<Uint32>();
        final sizeLow = storm.getFileSize(hFile.value, sizeHigh);
        final total =
            (sizeHigh.value.toUnsigned(32) << 32) | sizeLow.toUnsigned(32);
        if (total == 0) return Uint8List(0);

        final buffer = arena<Uint8>(total);
        final read = arena<Uint32>();
        if (!storm.readFile(
              hFile.value,
              buffer,
              total,
              read,
              Pointer<Void>.fromAddress(0),
            )) {
          throw MpqReadException('读取文件失败: $name', 0);
        }
        return Uint8List.fromList(buffer.asTypedList(read.value));
      } finally {
        storm.closeFile(hFile.value);
      }
    });
  }

  /// 提取归档内文件到磁盘（StormLib 单调用实现，效率高于 [extract]）。
  void extractTo(String name, String destination) {
    _ensureOpen();
    final storm = StormLib.instance;
    using((arena) {
      final cname = name.toNativeUtf8(allocator: arena);
      final cdest = destination.toNativeUtf8(allocator: arena);
      if (!storm.extractFile(_hMpq, cname, cdest, 0)) {
        throw MpqExtractException('提取文件失败: $name -> $destination', 0);
      }
    });
  }

  /// 枚举归档内所有文件路径。
  ///
  /// 依赖归档内嵌的 (listfile)；无 listfile 的归档可能返回空。
  List<String> get files {
    _ensureOpen();
    final storm = StormLib.instance;
    return using((arena) {
      final result = <String>[];
      final data = arena<SFileFindData>();
      // szMask='*' 匹配全部；szListFile=nullptr 表示使用归档自带 listfile。
      final mask = '*'.toNativeUtf8(allocator: arena);
      final hFind = storm.findFirstFile(
        _hMpq,
        mask,
        data,
        Pointer<Utf8>.fromAddress(0),
      );
      if (hFind.address == 0) return result; // 空归档

      try {
        // StormLib 会跳过 (listfile)/(attributes)/(signature) 等内部文件。
        // 注意首条结果已在 data 中。
        do {
          final fn = data.fileName;
          if (fn.isNotEmpty) result.add(fn);
        } while (storm.findNextFile(hFind, data));
      } finally {
        storm.findClose(hFind);
      }
      return result;
    });
  }

  /// 向归档写入文件（从内存数据）。
  ///
  /// [compress] 为 true 时使用 ZLIB 压缩；[compression] 可指定为
  /// [compressBzip2] 覆盖默认 ZLIB。
  void addFile(
    String name,
    Uint8List data, {
    bool compress = true,
    int compression = compressZlib,
  }) {
    _ensureOpen();
    if (!_writable) throw StateError('归档以只读模式打开: $_path');
    final storm = StormLib.instance;
    using((arena) {
      final cname = name.toNativeUtf8(allocator: arena);
      final hFile = arena<StormHandle>();
      // SFileCreateFile 的文件标志只传 COMPRESS 等存储标志；
      // 不能传 MPQ_FILE_EXISTS/REPLACEEXISTING(0x80000000)。
      final flags = compress ? 0x200 : 0;
      // SFileCreateFile: (hMpq, name, FileTime(0), dwFileSize, lcLocale(0), dwFlags, &hFile)
      if (!storm.createFile(
            _hMpq,
            cname,
            0,
            data.length,
            0,
            flags,
            hFile,
          )) {
        throw MpqWriteException('创建文件失败: $name', 0);
      }
      var finished = false;
      try {
        final buf = arena<Uint8>(data.length);
        buf.asTypedList(data.length).setAll(0, data);
        // SFileWriteFile: (hFile, pvData, dwSize, dwCompression)
        // 不压缩则传 0；压缩传 compression；0xFFFFFFFF 表示"同上一扇区"对单文件无效。
        final comp = compress ? compression : 0;
        if (!storm.writeFile(hFile.value, buf, data.length, comp)) {
          throw MpqWriteException('写入文件数据失败: $name', 0);
        }
        if (!storm.finishFile(hFile.value)) {
          throw MpqWriteException('完成文件失败: $name', 0);
        }
        finished = true;
      } finally {
        if (!finished) storm.closeFile(hFile.value);
      }
    });
  }

  /// 从归档删除文件。
  void removeFile(String name) {
    _ensureOpen();
    if (!_writable) throw StateError('归档以只读模式打开: $_path');
    final storm = StormLib.instance;
    using((arena) {
      final cname = name.toNativeUtf8(allocator: arena);
      if (!storm.removeFile(_hMpq, cname, 0)) {
        throw MpqRemoveException('删除文件失败: $name', 0);
      }
    });
  }

  /// 压紧归档，回收删除文件留下的空间。
  void compact() {
    _ensureOpen();
    if (!_writable) throw StateError('归档以只读模式打开: $_path');
    final storm = StormLib.instance;
    using((arena) {
      // szListFile=nullptr 表示使用内嵌 listfile；bReserved=0。
      if (storm.compactArchive(
            _hMpq,
            Pointer<Utf8>.fromAddress(0),
            false,
          )) {
        throw MpqCompactException('压紧归档失败: $_path', 0);
      }
    });
  }

  /// 落盘未写入缓存并关闭归档。重复调用安全。
  void close() {
    if (_closed) return;
    _closed = true;
    final storm = StormLib.instance;
    if (_writable) storm.flushArchive(_hMpq);
    storm.closeArchive(_hMpq);
  }

  void _ensureOpen() {
    if (_closed) throw StateError('归档已关闭: $_path');
  }
}