/// DBC 文件头结构
///
/// 标准 WDBC 文件头结构 (20 字节):
/// | 偏移 | 大小 | 类型   | 说明                    |
/// |------|------|--------|-------------------------|
/// | 0x00 | 4    | char[4]| 文件签名 "WDBC"         |
/// | 0x04 | 4    | uint32 | 记录数量                |
/// | 0x08 | 4    | uint32 | 字段数量                |
/// | 0x0C | 4    | uint32 | 单条记录大小 (字节)      |
/// | 0x10 | 4    | uint32 | 字符串表大小            |
library;

import 'dart:typed_data';

import '../utils/exceptions.dart';

/// DBC 文件头
final class DbcHeader {
  /// WDBC 文件签名值 (0x43424457 = 'WDBC')
  static const int signatureValue = 0x43424457;

  /// 文件签名
  final String signature;

  /// 记录数量
  final int recordCount;

  /// 字段数量
  final int fieldCount;

  /// 单条记录大小 (字节)
  final int recordSize;

  /// 字符串表大小
  final int stringBlockSize;

  /// 创建 DBC 文件头
  const DbcHeader({
    required this.signature,
    required this.recordCount,
    required this.fieldCount,
    required this.recordSize,
    required this.stringBlockSize,
  });

  /// 从字节数据读取头信息
  ///
  /// [data] - 至少 20 字节的字节数据
  /// 返回解析后的 DbcHeader 对象
  factory DbcHeader.fromBytes(Uint8List data) {
    if (data.length < 20) {
      throw FileReadException(
        'Header data too short: ${data.length} bytes (expected 20)',
      );
    }

    final byteData = ByteData.sublistView(data);

    // 读取签名 (4 字节)
    final signatureInt = byteData.getUint32(0, Endian.little);

    // 验证签名
    if (signatureInt != signatureValue) {
      throw InvalidSignatureException(signatureInt);
    }

    // 读取各个字段
    final recordCount = byteData.getInt32(4, Endian.little);
    final fieldCount = byteData.getInt32(8, Endian.little);
    final recordSize = byteData.getInt32(12, Endian.little);
    final stringBlockSize = byteData.getInt32(16, Endian.little);

    // 验证字段数量
    if (fieldCount <= 0) {
      throw FormatException('Invalid field count: $fieldCount');
    }

    // 验证记录数量
    if (recordCount < 0) {
      throw FormatException('Invalid record count: $recordCount');
    }

    // 验证记录大小
    if (recordSize <= 0) {
      throw FormatException('Invalid record size: $recordSize');
    }

    return DbcHeader(
      signature: 'WDBC',
      recordCount: recordCount,
      fieldCount: fieldCount,
      recordSize: recordSize,
      stringBlockSize: stringBlockSize,
    );
  }

  /// 将头信息写入字节缓冲区
  ///
  /// [buffer] - 至少 20 字节的缓冲区
  /// 返回写入后的缓冲区
  Uint8List toBytes([Uint8List? buffer]) {
    final byteData = buffer != null
        ? ByteData.sublistView(buffer)
        : ByteData(20);

    // 写入签名
    byteData.setUint32(0, signatureValue, Endian.little);

    // 写入各个字段
    byteData.setInt32(4, recordCount, Endian.little);
    byteData.setInt32(8, fieldCount, Endian.little);
    byteData.setInt32(12, recordSize, Endian.little);
    byteData.setInt32(16, stringBlockSize, Endian.little);

    return byteData.buffer.asUint8List();
  }

  /// 计算头大小
  static const int size = 20;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! DbcHeader) return false;
    return recordCount == other.recordCount &&
        fieldCount == other.fieldCount &&
        recordSize == other.recordSize &&
        stringBlockSize == other.stringBlockSize;
  }

  @override
  int get hashCode =>
      Object.hash(recordCount, fieldCount, recordSize, stringBlockSize);

  @override
  String toString() {
    return 'DbcHeader(signature: $signature, recordCount: $recordCount, '
        'fieldCount: $fieldCount, recordSize: $recordSize, '
        'stringBlockSize: $stringBlockSize)';
  }
}
