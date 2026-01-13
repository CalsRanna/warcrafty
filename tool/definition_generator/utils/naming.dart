/// 转换为 camelCase
String toCamelCase(String name) {
  final snake = toSnakeCase(name);
  final parts = snake.split('_');
  return parts[0] +
      parts
          .skip(1)
          .map((w) => w.isEmpty ? '' : '${w[0].toUpperCase()}${w.substring(1)}')
          .join();
}

/// 转换为 snake_case
String toSnakeCase(String name) {
  return name
      .replaceAllMapped(RegExp(r'([A-Z])'), (m) => '_${m.group(1)}')
      .replaceFirst('_', '')
      .toLowerCase();
}
