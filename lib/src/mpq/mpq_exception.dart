/// MPQ 操作异常。
///
/// 沿用项目的 sealed exception 风格，统一从该基类派生。
sealed class MpqException implements Exception {
  final String message;
  MpqException(this.message);

  @override
  String toString() => '$runtimeType: $message';
}

/// StormLib 原生库未能加载。
final class StormLibNotFoundException extends MpqException {
  StormLibNotFoundException(super.message);
}

/// MPQ 归档打开/创建失败。
final class MpqOpenException extends MpqException {
  MpqOpenException(super.message, this.errorCode);
  final int errorCode;
}

/// MPQ 内部文件打开失败（通常是文件不存在）。
final class MpqFileNotFoundException extends MpqException {
  MpqFileNotFoundException(super.message, this.errorCode);
  final int errorCode;
}

/// MPQ 文件读取失败。
final class MpqReadException extends MpqException {
  MpqReadException(super.message, this.errorCode);
  final int errorCode;
}

/// MPQ 文件写入/添加失败。
final class MpqWriteException extends MpqException {
  MpqWriteException(super.message, this.errorCode);
  final int errorCode;
}

/// MPQ 文件删除失败。
final class MpqRemoveException extends MpqException {
  MpqRemoveException(super.message, this.errorCode);
  final int errorCode;
}

/// MPQ 归档压紧失败。
final class MpqCompactException extends MpqException {
  MpqCompactException(super.message, this.errorCode);
  final int errorCode;
}

/// MPQ 提取文件失败。
final class MpqExtractException extends MpqException {
  MpqExtractException(super.message, this.errorCode);
  final int errorCode;
}