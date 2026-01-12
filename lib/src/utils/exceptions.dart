/// DBC 文件解析异常基类
sealed class DbcException implements Exception {
  final String message;
  DbcException(this.message);

  @override
  String toString() => '$runtimeType: $message';
}

/// 文件签名验证失败
final class InvalidSignatureException extends DbcException {
  InvalidSignatureException(int actual)
    : super('Invalid signature: 0x${actual.toRadixString(16).padLeft(8, '0')}');
}

/// 格式字符串解析错误
final class FormatException extends DbcException {
  FormatException(super.message);
}

/// 字段索引越界
final class FieldIndexOutOfRangeException extends DbcException {
  FieldIndexOutOfRangeException(int index, int fieldCount)
    : super('Field index $index out of range for $fieldCount fields');
}

/// 字符串偏移量越界
final class StringOffsetOutOfRangeException extends DbcException {
  StringOffsetOutOfRangeException(int offset, int stringBlockSize)
    : super(
        'String offset $offset out of range for string block size $stringBlockSize',
      );
}

/// 记录索引越界
final class RecordIndexOutOfRangeException extends DbcException {
  RecordIndexOutOfRangeException(int index, int recordCount)
    : super('Record index $index out of range for $recordCount records');
}

/// 文件读取错误
final class FileReadException extends DbcException {
  FileReadException(super.message);
}

/// 写入错误
final class WriteException extends DbcException {
  WriteException(super.message);
}
