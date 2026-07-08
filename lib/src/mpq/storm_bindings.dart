/// StormLib C API 的 Dart FFI 绑定。
///
/// 采用 `DynamicLibrary.lookupFunction` 的运行时绑定方式，以便按优先级定位
/// 原生库：环境变量 -> Homebrew 安装路径。函数签名严格依据 StormLib v9.40
/// 的 `StormLib.h`。
library;

import 'dart:ffi';
import 'dart:io';

import 'package:ffi/ffi.dart';

import 'mpq_exception.dart';

/// StormLib 的 HANDLE 类型。
typedef StormHandle = Pointer<Void>;

/// SFileFindFirstFile / SFileFindNextFile 使用的查找结果结构体。
///
/// 已用本机 C 探针核对：MAX_PATH=1024，sizeof(SFILE_FIND_DATA)=1064。
final class SFileFindData extends Struct {
  /// 完整文件名（含路径），ASCII 字符串。
  @Array(1024)
  external Array<Uint8> cFileName;

  /// 文件纯名（指向 cFileName 内某处的指针）。
  external Pointer<Utf8> szPlainName;

  @Uint32() external int dwHashIndex;
  @Uint32() external int dwBlockIndex;
  @Uint32() external int dwFileSize;
  @Uint32() external int dwFileFlags;
  @Uint32() external int dwCompSize;
  @Uint32() external int dwFileTimeLo;
  @Uint32() external int dwFileTimeHi;
  @Uint32() external int lcLocale;
}

/// 读取查找结果中的完整文件名。
extension SFileFindDataPointer on Pointer<SFileFindData> {
  String get fileName => cast<Utf8>().toDartString();
}

typedef _OpenArchiveNative = Bool Function(
  Pointer<Utf8>,
  Uint32,
  Uint32,
  Pointer<StormHandle>,
);
typedef _OpenArchiveDart = bool Function(
  Pointer<Utf8>,
  int,
  int,
  Pointer<StormHandle>,
);

typedef _CreateArchiveNative = Bool Function(
  Pointer<Utf8>,
  Uint32,
  Uint32,
  Pointer<StormHandle>,
);
typedef _CreateArchiveDart = bool Function(
  Pointer<Utf8>,
  int,
  int,
  Pointer<StormHandle>,
);

typedef _BoolHandleNative = Bool Function(StormHandle);
typedef _BoolHandleDart = bool Function(StormHandle);

typedef _OpenFileExNative = Bool Function(
  StormHandle,
  Pointer<Utf8>,
  Uint32,
  Pointer<StormHandle>,
);
typedef _OpenFileExDart = bool Function(
  StormHandle,
  Pointer<Utf8>,
  int,
  Pointer<StormHandle>,
);

typedef _GetFileSizeNative = Uint32 Function(StormHandle, Pointer<Uint32>);
typedef _GetFileSizeDart = int Function(StormHandle, Pointer<Uint32>);

typedef _ReadFileNative = Bool Function(
  StormHandle,
  Pointer<Uint8>,
  Uint32,
  Pointer<Uint32>,
  Pointer<Void>,
);
typedef _ReadFileDart = bool Function(
  StormHandle,
  Pointer<Uint8>,
  int,
  Pointer<Uint32>,
  Pointer<Void>,
);

typedef _ExtractFileNative = Bool Function(
  StormHandle,
  Pointer<Utf8>,
  Pointer<Utf8>,
  Uint32,
);
typedef _ExtractFileDart = bool Function(
  StormHandle,
  Pointer<Utf8>,
  Pointer<Utf8>,
  int,
);

typedef _FindFirstFileNative = StormHandle Function(
  StormHandle,
  Pointer<Utf8>,
  Pointer<SFileFindData>,
  Pointer<Utf8>,
);
typedef _FindFirstFileDart = StormHandle Function(
  StormHandle,
  Pointer<Utf8>,
  Pointer<SFileFindData>,
  Pointer<Utf8>,
);

typedef _FindNextFileNative = Bool Function(StormHandle, Pointer<SFileFindData>);
typedef _FindNextFileDart = bool Function(StormHandle, Pointer<SFileFindData>);

typedef _CreateFileNative = Bool Function(
  StormHandle,
  Pointer<Utf8>,
  Uint64,
  Uint32,
  Uint32,
  Uint32,
  Pointer<StormHandle>,
);
typedef _CreateFileDart = bool Function(
  StormHandle,
  Pointer<Utf8>,
  int,
  int,
  int,
  int,
  Pointer<StormHandle>,
);

typedef _WriteFileNative = Bool Function(
  StormHandle,
  Pointer<Uint8>,
  Uint32,
  Uint32,
);
typedef _WriteFileDart = bool Function(StormHandle, Pointer<Uint8>, int, int);

typedef _RemoveFileNative = Bool Function(StormHandle, Pointer<Utf8>, Uint32);
typedef _RemoveFileDart = bool Function(StormHandle, Pointer<Utf8>, int);

typedef _CompactArchiveNative = Bool Function(StormHandle, Pointer<Utf8>, Bool);
typedef _CompactArchiveDart = bool Function(StormHandle, Pointer<Utf8>, bool);

/// 懒加载的 StormLib 原生库符号集合。
final class StormLib {
  StormLib._(this._lib);

  static DynamicLibrary? _cache;

  /// 单例实例。
  static final StormLib instance = _open();

  /// 打开并缓存原生库。按优先级依次尝试候选路径。
  static StormLib _open() {
    final cached = _cache;
    if (cached != null) return StormLib._(cached);

    final envPath = Platform.environment['WARCRAFTY_STORMLIB_PATH'];
    final candidates = <String>[
      if (envPath != null && envPath.isNotEmpty) envPath,
      ..._brewCandidates,
    ];

    for (final path in candidates) {
      if (!File(path).existsSync()) continue;
      try {
        _cache = DynamicLibrary.open(path);
        return StormLib._(_cache!);
      } on ArgumentError {
        continue;
      }
    }

    throw StormLibNotFoundException(
      '未找到 StormLib 原生库。请安装：\n'
      '  macOS:   brew install stormlib\n'
      '  Linux:   下载 https://github.com/ladislav-zezula/StormLib/releases 中的 .deb\n'
      '  Windows: 下载 stormlib_dll.zip，将 StormLib.dll 置于可执行文件同目录\n'
      '也可设置 WARCRAFTY_STORMLIB_PATH 指向 libstorm.{dylib,so,dll}。\n'
      '已尝试路径：\n  - ${candidates.join("\n  - ")}',
    );
  }

  /// Homebrew / 系统安装的典型路径。
  static final _brewCandidates = <String>[
    if (Platform.isMacOS) ...[
      '/opt/homebrew/opt/stormlib/lib/libstorm.dylib',
      '/usr/local/opt/stormlib/lib/libstorm.dylib',
    ],
    if (Platform.isLinux) ...[
      '/usr/lib/libstorm.so',
      '/usr/lib/x86_64-linux-gnu/libstorm.so',
      '/usr/local/lib/libstorm.so',
    ],
    if (Platform.isWindows) ...[
      'StormLib.dll',
      'storm.dll',
    ],
  ];

  final DynamicLibrary _lib;

  late final bool Function(Pointer<Utf8>, int, int, Pointer<StormHandle>)
  openArchive = _lib.lookupFunction<_OpenArchiveNative, _OpenArchiveDart>(
    'SFileOpenArchive',
  );

  late final bool Function(Pointer<Utf8>, int, int, Pointer<StormHandle>)
  createArchive = _lib.lookupFunction<_CreateArchiveNative, _CreateArchiveDart>(
    'SFileCreateArchive',
  );

  late final bool Function(StormHandle) flushArchive =
      _lib.lookupFunction<_BoolHandleNative, _BoolHandleDart>(
    'SFileFlushArchive',
  );

  late final bool Function(StormHandle) closeArchive =
      _lib.lookupFunction<_BoolHandleNative, _BoolHandleDart>(
    'SFileCloseArchive',
  );

  late final bool Function(
    StormHandle,
    Pointer<Utf8>,
    int,
    Pointer<StormHandle>,
  ) openFileEx = _lib.lookupFunction<_OpenFileExNative, _OpenFileExDart>(
    'SFileOpenFileEx',
  );

  late final int Function(StormHandle, Pointer<Uint32>) getFileSize =
      _lib.lookupFunction<_GetFileSizeNative, _GetFileSizeDart>(
    'SFileGetFileSize',
  );

  late final bool Function(
    StormHandle,
    Pointer<Uint8>,
    int,
    Pointer<Uint32>,
    Pointer<Void>,
  ) readFile = _lib.lookupFunction<_ReadFileNative, _ReadFileDart>(
    'SFileReadFile',
  );

  late final bool Function(StormHandle) closeFile =
      _lib.lookupFunction<_BoolHandleNative, _BoolHandleDart>(
    'SFileCloseFile',
  );

  late final bool Function(StormHandle, Pointer<Utf8>, Pointer<Utf8>, int)
  extractFile = _lib.lookupFunction<_ExtractFileNative, _ExtractFileDart>(
    'SFileExtractFile',
  );

  late final StormHandle Function(
    StormHandle,
    Pointer<Utf8>,
    Pointer<SFileFindData>,
    Pointer<Utf8>,
  ) findFirstFile =
      _lib.lookupFunction<_FindFirstFileNative, _FindFirstFileDart>(
    'SFileFindFirstFile',
  );

  late final bool Function(StormHandle, Pointer<SFileFindData>) findNextFile =
      _lib.lookupFunction<_FindNextFileNative, _FindNextFileDart>(
    'SFileFindNextFile',
  );

  late final bool Function(StormHandle) findClose =
      _lib.lookupFunction<_BoolHandleNative, _BoolHandleDart>(
    'SFileFindClose',
  );

  late final bool Function(
    StormHandle,
    Pointer<Utf8>,
    int,
    int,
    int,
    int,
    Pointer<StormHandle>,
  ) createFile = _lib.lookupFunction<_CreateFileNative, _CreateFileDart>(
    'SFileCreateFile',
  );

  late final bool Function(StormHandle, Pointer<Uint8>, int, int) writeFile =
      _lib.lookupFunction<_WriteFileNative, _WriteFileDart>(
    'SFileWriteFile',
  );

  late final bool Function(StormHandle) finishFile =
      _lib.lookupFunction<_BoolHandleNative, _BoolHandleDart>(
    'SFileFinishFile',
  );

  late final bool Function(StormHandle, Pointer<Utf8>, int) removeFile =
      _lib.lookupFunction<_RemoveFileNative, _RemoveFileDart>(
    'SFileRemoveFile',
  );

  late final bool Function(StormHandle, Pointer<Utf8>, bool) compactArchive =
      _lib.lookupFunction<_CompactArchiveNative, _CompactArchiveDart>(
    'SFileCompactArchive',
  );
}
