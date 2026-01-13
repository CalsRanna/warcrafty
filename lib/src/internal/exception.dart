sealed class DbcException implements Exception {
  final String message;
  DbcException(this.message);

  @override
  String toString() => '$runtimeType: $message';
}

final class InvalidSignatureException extends DbcException {
  InvalidSignatureException(int actual)
    : super('Invalid signature: 0x${actual.toRadixString(16).padLeft(8, '0')}');
}

final class DbcFormatException extends DbcException {
  DbcFormatException(super.message);
}

final class FieldIndexOutOfRangeException extends DbcException {
  FieldIndexOutOfRangeException(int index, int fieldCount)
    : super('Field index $index out of range for $fieldCount fields');
}

final class StringOffsetOutOfRangeException extends DbcException {
  StringOffsetOutOfRangeException(int offset, int stringBlockSize)
    : super(
        'String offset $offset out of range for string block size $stringBlockSize',
      );
}

final class RecordIndexOutOfRangeException extends DbcException {
  RecordIndexOutOfRangeException(int index, int recordCount)
    : super('Record index $index out of range for $recordCount records');
}

final class FileReadException extends DbcException {
  FileReadException(super.message);
}

final class WriteException extends DbcException {
  WriteException(super.message);
}
