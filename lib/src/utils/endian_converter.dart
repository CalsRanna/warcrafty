import 'dart:typed_data';

/// 字节序转换类
///
/// DBC 文件使用小端序。在小端序系统上（如 x86/x64）无需转换，
/// 在大端序系统上需要交换字节。
final class EndianConverter {
  EndianConverter._();

  /// 转换 16 位整数 (大端 <-> 小端)
  static int swapInt16(int value) {
    return ((value & 0xFF) << 8) | ((value >> 8) & 0xFF);
  }

  /// 转换 32 位整数 (大端 <-> 小端)
  static int swapInt32(int value) {
    return ((value & 0x000000FF) << 24) |
        ((value & 0x0000FF00) << 8) |
        ((value & 0x00FF0000) >> 8) |
        ((value & 0xFF000000) >> 24);
  }

  /// 转换 64 位整数 (大端 <-> 小端)
  static int swapInt64(int value) {
    return ((value & 0x00000000000000FF) << 56) |
        ((value & 0x000000000000FF00) << 40) |
        ((value & 0x0000000000FF0000) << 24) |
        ((value & 0x00000000FF000000) << 8) |
        ((value & 0x000000FF00000000) >> 8) |
        ((value & 0x0000FF0000000000) >> 24) |
        ((value & 0x00FF000000000000) >> 40) |
        ((value & 0xFF00000000000000) >> 56);
  }

  /// 转换 32 位浮点数
  static double swapFloat32(double value) {
    final bytes = Float32List.fromList([value]);
    final intValue = Int32List.view(bytes.buffer).first;
    final swapped = swapInt32(intValue);
    final temp = Int32List(1)..[0] = swapped;
    return Float32List.view(temp.buffer).first;
  }

  /// 转换 64 位浮点数
  static double swapFloat64(double value) {
    final bytes = Float64List.fromList([value]);
    final intValue = Int64List.view(bytes.buffer).first;
    final swapped = swapInt64(intValue);
    final temp = Int64List(1)..[0] = swapped;
    return Float64List.view(temp.buffer).first;
  }

  /// 转换字节列表 (原地修改)
  static void swapBytes(Uint8List bytes, [int offset = 0]) {
    final end = offset + bytes.length;
    while (offset < end - 1) {
      final temp = bytes[offset];
      bytes[offset] = bytes[end - offset - 1];
      bytes[end - offset - 1] = temp;
      offset++;
    }
  }
}
