import 'dart:typed_data';

import 'exception.dart';

/// DBC 文件头
final class DbcHeader {
  /// WDBC 文件签名值 (0x43424457 = 'WDBC')
  static const int signatureValue = 0x43424457;

  /// 文件头大小
  static const int size = 20;

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

  const DbcHeader({
    required this.signature,
    required this.recordCount,
    required this.fieldCount,
    required this.recordSize,
    required this.stringBlockSize,
  });

  /// 从字节数据读取头信息
  factory DbcHeader.fromBytes(Uint8List data) {
    if (data.length < 20) {
      throw FileReadException(
        'Header data too short: ${data.length} bytes (expected 20)',
      );
    }

    final byteData = ByteData.sublistView(data);
    final signatureInt = byteData.getUint32(0, Endian.little);

    if (signatureInt != signatureValue) {
      throw InvalidSignatureException(signatureInt);
    }

    final recordCount = byteData.getInt32(4, Endian.little);
    final fieldCount = byteData.getInt32(8, Endian.little);
    final recordSize = byteData.getInt32(12, Endian.little);
    final stringBlockSize = byteData.getInt32(16, Endian.little);

    if (fieldCount <= 0) {
      throw DbcFormatException('Invalid field count: $fieldCount');
    }
    if (recordCount < 0) {
      throw DbcFormatException('Invalid record count: $recordCount');
    }
    if (recordSize <= 0) {
      throw DbcFormatException('Invalid record size: $recordSize');
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
  Uint8List toBytes([Uint8List? buffer]) {
    final byteData = buffer != null
        ? ByteData.sublistView(buffer)
        : ByteData(20);

    byteData.setUint32(0, signatureValue, Endian.little);
    byteData.setInt32(4, recordCount, Endian.little);
    byteData.setInt32(8, fieldCount, Endian.little);
    byteData.setInt32(12, recordSize, Endian.little);
    byteData.setInt32(16, stringBlockSize, Endian.little);

    return byteData.buffer.asUint8List();
  }

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
  String toString() =>
      'DbcHeader(records: $recordCount, fields: $fieldCount, recordSize: $recordSize)';
}
