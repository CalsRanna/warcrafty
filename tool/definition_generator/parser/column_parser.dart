import '../models/column_def.dart';

/// 解析 COLUMNS 行
ColumnDef? parseColumnLine(String line) {
  line = line.trim();

  // 移除行末注释 (// ...)
  final commentIndex = line.indexOf('//');
  if (commentIndex != -1) {
    line = line.substring(0, commentIndex).trim();
  }
  if (line.isEmpty) return null;

  final pattern = RegExp(
    r'^(int|float|string|locstring)(?:<([^>]+)>)?\s+(\w+)(\?)?$',
  );
  final match = pattern.firstMatch(line);
  if (match != null) {
    return ColumnDef(
      type: match.group(1)!,
      name: match.group(3)!,
      foreignRef: match.group(2),
      isUncertain: match.group(4) != null,
    );
  }
  return null;
}
