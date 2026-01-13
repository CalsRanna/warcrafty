import '../models/field_def.dart';

/// 解析字段行
FieldDef? parseFieldLine(String line) {
  line = line.trim();
  if (line.isEmpty ||
      line.startsWith('LAYOUT') ||
      line.startsWith('BUILD') ||
      line.startsWith('COMMENT')) {
    return null;
  }

  // 移除行末注释 (// ...)
  final commentIndex = line.indexOf('//');
  if (commentIndex != -1) {
    line = line.substring(0, commentIndex).trim();
  }
  if (line.isEmpty) return null;

  final pattern = RegExp(r'^(\$[\w,]+\$)?(\w+)(?:<([^>]+)>)?(?:\[(\d+)\])?$');
  final match = pattern.firstMatch(line);
  if (match == null) return null;

  final annotation = match.group(1) ?? '';
  final name = match.group(2)!;
  final size = match.group(3);
  final arraySize = match.group(4) != null ? int.parse(match.group(4)!) : null;

  return FieldDef(
    name: name,
    size: size,
    arraySize: arraySize,
    isId: annotation.toLowerCase().contains('id'),
    isRelation: annotation.toLowerCase().contains('relation'),
    isNoninline: annotation.toLowerCase().contains('noninline'),
  );
}
