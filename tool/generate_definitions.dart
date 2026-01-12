// tool/generate_definitions.dart
// WoWDBDefs .dbd 文件解析器和 Dart 定义生成器
//
// 使用方法:
// dart run tool/generate_definitions.dart
//
// 目标版本: 3.3.5.12340 (巫妖王之怒最后补丁)

import 'dart:io';

const targetVersion = '3.3.5.12340';
final wowDBDefsPath = Directory(r'D:\Code\WoWDBDefs\definitions');
final outputPath = Directory(r'D:\Code\warcrafty\lib\src\definition');
final dbcPath = Directory(r'D:\Simulators\AzerothCore\core\dbc');

// 分类规则 (前缀 -> 目录)
const categoryRules = {
  'Achievement': 'achievement',
  'Area': 'area',
  'World': 'area',
  'WMO': 'area',
  'Chr': 'character',
  'Char': 'character',
  'Chat': 'character',
  'Creature': 'creature',
  'Faction': 'faction',
  'GameObject': 'gameobject',
  'GameObjects': 'gameobject',
  'Gt': 'gt',
  'Item': 'item',
  'Gem': 'item',
  'Light': 'light',
  'Map': 'map',
  'Dungeon': 'map',
  'LFG': 'map',
  'Quest': 'quest',
  'Skill': 'skill',
  'Sound': 'sound',
  'Music': 'sound',
  'Ambient': 'sound',
  'Spell': 'spell',
  'Glyph': 'spell',
  'Totem': 'spell',
  'Talent': 'talent',
  'Taxi': 'taxi',
  'Vehicle': 'vehicle',
};

class ColumnDef {
  final String type; // int, float, string, locstring
  final String name;
  final String? foreignRef;
  final bool isUncertain;

  ColumnDef({
    required this.type,
    required this.name,
    this.foreignRef,
    this.isUncertain = false,
  });
}

class FieldDef {
  final String name;
  final String? size;
  final int? arraySize;
  final bool isId;
  final bool isRelation;
  final bool isNoninline;

  FieldDef({
    required this.name,
    this.size,
    this.arraySize,
    this.isId = false,
    this.isRelation = false,
    this.isNoninline = false,
  });
}

class DbdFile {
  final String name;
  final Map<String, ColumnDef> columns = {};
  final List<FieldDef> targetFields = [];
  bool hasTargetVersion = false;

  DbdFile(this.name);
}

/// 解析版本范围
(String, String) parseVersionRange(String versionStr) {
  if (versionStr.contains('-')) {
    final parts = versionStr.split('-');
    return (parts[0].trim(), parts[1].trim());
  }
  return (versionStr.trim(), versionStr.trim());
}

/// 版本比较
List<int> parseVer(String v) {
  return v.split('.').map(int.parse).toList();
}

bool versionInRange(String target, String start, String end) {
  final t = parseVer(target);
  final s = parseVer(start);
  final e = parseVer(end);

  int compare(List<int> a, List<int> b) {
    for (int i = 0; i < a.length && i < b.length; i++) {
      if (a[i] < b[i]) return -1;
      if (a[i] > b[i]) return 1;
    }
    return 0;
  }

  return compare(s, t) <= 0 && compare(t, e) <= 0;
}

/// 检查 BUILD 行是否匹配目标版本
bool checkVersionMatch(String buildLine, String targetVersion) {
  final versionsStr = buildLine.replaceFirst('BUILD ', '').trim();

  for (final versionPart in versionsStr.split(',')) {
    final part = versionPart.trim();
    if (part.isEmpty) continue;

    final (start, end) = parseVersionRange(part);
    if (versionInRange(targetVersion, start, end)) {
      return true;
    }
  }
  return false;
}

/// 解析 COLUMNS 行
ColumnDef? parseColumnLine(String line) {
  line = line.trim();

  // 移除行末注释 (// ...)
  final commentIndex = line.indexOf('//');
  if (commentIndex != -1) {
    line = line.substring(0, commentIndex).trim();
  }
  if (line.isEmpty) return null;

  final pattern = RegExp(r'^(int|float|string|locstring)(?:<([^>]+)>)?\s+(\w+)(\?)?$');
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

/// 检查 BUILD 行是否在 3.x 版本范围内
bool isVersion3x(String buildLine) {
  final versionsStr = buildLine.replaceFirst('BUILD ', '').trim();
  for (final versionPart in versionsStr.split(',')) {
    final part = versionPart.trim();
    if (part.isEmpty) continue;
    if (part.startsWith('3.')) return true;
    if (part.contains('-')) {
      final (start, end) = parseVersionRange(part);
      // 检查范围是否包含 3.x
      if (start.startsWith('3.') || end.startsWith('3.')) return true;
      // 检查范围是否跨越 3.x
      final startMajor = int.tryParse(start.split('.')[0]) ?? 0;
      final endMajor = int.tryParse(end.split('.')[0]) ?? 0;
      if (startMajor <= 3 && endMajor >= 3) return true;
    }
  }
  return false;
}

/// 解析 .dbd 文件 (支持版本回退)
DbdFile parseDbdFile(File file, {bool debug = false}) {
  final dbd = DbdFile(file.uri.pathSegments.last.replaceAll('.dbd', ''));
  final content = file.readAsStringSync();
  final lines = content.split('\n');

  var inColumns = false;
  var inTargetVersion = false;
  var foundTarget = false;

  // 回退版本支持
  var inFallbackVersion = false;
  var foundFallback = false;
  final fallbackFields = <FieldDef>[];

  for (final line in lines) {
    final trimmed = line.trim();

    // COLUMNS 部分
    if (trimmed == 'COLUMNS') {
      inColumns = true;
      continue;
    }

    if (inColumns) {
      if (trimmed.isEmpty ||
          trimmed.startsWith('BUILD') ||
          trimmed.startsWith('LAYOUT')) {
        inColumns = false;
      } else {
        final col = parseColumnLine(trimmed);
        if (col != null) {
          dbd.columns[col.name] = col;
        }
        continue;
      }
    }

    // 检测目标版本 (精确匹配 3.3.5.12340)
    if (trimmed.startsWith('BUILD ') && !foundTarget) {
      if (debug) print('  Checking BUILD: $trimmed');
      if (checkVersionMatch(trimmed, targetVersion)) {
        if (debug) print('    -> MATCHED target version!');
        inTargetVersion = true;
        foundTarget = true;
        dbd.hasTargetVersion = true;
        inFallbackVersion = false; // 停止回退版本收集
        continue;
      }
      // 检测回退版本 (3.x 范围)
      if (!foundFallback && isVersion3x(trimmed)) {
        if (debug) print('    -> Found 3.x fallback version');
        inFallbackVersion = true;
        foundFallback = true;
        continue;
      }
    }

    // 在目标版本内读取字段
    if (inTargetVersion) {
      if (trimmed.startsWith('LAYOUT') || trimmed.isEmpty) {
        inTargetVersion = false;
      } else if (trimmed.startsWith('BUILD')) {
        // 多个 BUILD 行共享同一组字段，继续
      } else if (!trimmed.startsWith('COMMENT')) {
        final field = parseFieldLine(trimmed);
        if (field != null) {
          dbd.targetFields.add(field);
        }
      }
    }

    // 在回退版本内读取字段
    if (inFallbackVersion && !foundTarget) {
      if (trimmed.startsWith('LAYOUT') || trimmed.isEmpty) {
        inFallbackVersion = false;
      } else if (trimmed.startsWith('BUILD')) {
        // 多个 BUILD 行共享同一组字段，继续
      } else if (!trimmed.startsWith('COMMENT')) {
        final field = parseFieldLine(trimmed);
        if (field != null) {
          fallbackFields.add(field);
        }
      }
    }
  }

  // 如果没有找到精确版本，使用回退版本
  if (!foundTarget && foundFallback && fallbackFields.isNotEmpty) {
    dbd.targetFields.addAll(fallbackFields);
    dbd.hasTargetVersion = true; // 标记为有版本（回退）
  }

  return dbd;
}

/// 检查字段是否是字节字段 (`<8>` 或 `<u8>`)
bool isByteField(FieldDef field) {
  final size = field.size;
  if (size == null) return false;
  return size == '8' || size == 'u8';
}

/// 获取字段类型
(String, String) getFieldType(DbdFile dbd, FieldDef field) {
  final col = dbd.columns[field.name];

  // $id$ 标记
  if (field.isId) {
    return ('DbcFieldFormat.indexField', 'n');
  }

  // 检查字节字段 (<8> 或 <u8>)
  if (isByteField(field)) {
    return ('DbcFieldFormat.byte', 'b');
  }

  if (col != null) {
    switch (col.type) {
      case 'locstring':
        return ('LOCSTRING', 'LOCSTRING');
      case 'float':
        return ('DbcFieldFormat.float', 'f');
      case 'string':
        return ('DbcFieldFormat.string', 's');
      case 'int':
        return ('DbcFieldFormat.intType', 'i');
    }
  }

  return ('DbcFieldFormat.intType', 'i');
}

/// 转换为 snake_case
String toSnakeCase(String name) {
  return name
      .replaceAllMapped(RegExp(r'([A-Z])'), (m) => '_${m.group(1)}')
      .replaceFirst('_', '')
      .toLowerCase();
}

/// 转换为 camelCase
String toCamelCase(String name) {
  final snake = toSnakeCase(name);
  final parts = snake.split('_');
  return parts[0] +
      parts.skip(1).map((w) => w.isEmpty ? '' : '${w[0].toUpperCase()}${w.substring(1)}').join();
}

/// 确定分类
String categorizeDbc(String name) {
  for (final entry in categoryRules.entries) {
    if (name.startsWith(entry.key)) {
      return entry.value;
    }
  }
  return 'misc';
}

/// 生成 Dart 定义代码
String generateDartDefinition(DbdFile dbd) {
  final lines = <String>[];

  // 导入
  lines.add("import 'package:warcrafty/src/core/field_definition.dart';");
  lines.add("import 'package:warcrafty/src/core/structure_definition.dart';");
  lines.add("import 'package:warcrafty/src/core/field_format.dart';");

  // 检查是否需要 locale_fields
  var hasLocstring = false;
  for (final f in dbd.targetFields) {
    final col = dbd.columns[f.name];
    if (col != null && col.type == 'locstring') {
      hasLocstring = true;
      break;
    }
  }

  if (hasLocstring) {
    lines.add("import 'package:warcrafty/src/core/locale_fields.dart';");
  }

  lines.add('');
  lines.add('/// ${dbd.name} 结构定义');
  lines.add('///');
  lines.add('/// 基于 WoWDBDefs 定义，版本 $targetVersion');

  // 格式字符串
  final formatChars = <String>[];
  for (final f in dbd.targetFields) {
    final (_, char) = getFieldType(dbd, f);
    final count = f.arraySize ?? 1;

    if (char == 'LOCSTRING') {
      formatChars.addAll(List.filled(17, 's'));
    } else {
      formatChars.addAll(List.filled(count, char));
    }
  }
  final formatString = formatChars.join();

  final constOrFinal = hasLocstring ? 'final' : 'const';
  final varName = toCamelCase(dbd.name);
  // 当外层是 const 时，内部不需要 const 关键字；当外层是 final 时，内部需要 const
  final fieldConst = hasLocstring ? 'const ' : '';

  lines.add('$constOrFinal $varName = DbcStructureDefinition(');
  lines.add("  name: '${dbd.name}',");
  lines.add("  format: '$formatString',");
  lines.add('  fields: [');

  // 字段定义
  var fieldIndex = 0;
  for (final f in dbd.targetFields) {
    final (fieldType, char) = getFieldType(dbd, f);
    final count = f.arraySize ?? 1;

    if (char == 'LOCSTRING') {
      lines.add(
          "    ...createLocaleFieldsWithFlag($fieldIndex, '${f.name}', '${f.name}'),");
      fieldIndex += 17;
    } else if (count > 1) {
      for (var j = 0; j < count; j++) {
        lines.add(
            "    ${fieldConst}FieldDefinition(index: $fieldIndex, name: '${f.name}$j', description: '${f.name} $j', format: $fieldType),");
        fieldIndex++;
      }
    } else {
      lines.add(
          "    ${fieldConst}FieldDefinition(index: $fieldIndex, name: '${f.name}', description: '${f.name}', format: $fieldType),");
      fieldIndex++;
    }
  }

  lines.add('  ],');
  lines.add(');');
  lines.add('');

  return lines.join('\n');
}

void main() async {
  print('WoWDBDefs .dbd 解析器');
  print('目标版本: $targetVersion');
  print('WoWDBDefs 路径: ${wowDBDefsPath.path}');
  print('DBC 文件路径: ${dbcPath.path}');
  print('输出路径: ${outputPath.path}');
  print('');

  if (!wowDBDefsPath.existsSync()) {
    print('Error: WoWDBDefs path not found');
    exit(1);
  }

  if (!dbcPath.existsSync()) {
    print('Error: DBC path not found');
    exit(1);
  }

  // 获取用户的 DBC 文件列表
  final dbcFiles = dbcPath
      .listSync()
      .whereType<File>()
      .where((f) => f.path.toLowerCase().endsWith('.dbc'))
      .map((f) => f.uri.pathSegments.last.replaceAll('.dbc', ''))
      .toSet();

  print('发现 ${dbcFiles.length} 个 DBC 文件');

  final success = <String>[];
  final noTargetVersion = <String>[];
  final noDbdFile = <String>[];
  final errors = <(String, String)>[];
  final categoryCounts = <String, int>{};

  // 只处理用户有的 DBC 文件
  for (final dbcName in dbcFiles.toList()..sort()) {
    final dbdFile = File('${wowDBDefsPath.path}/$dbcName.dbd');

    if (!dbdFile.existsSync()) {
      noDbdFile.add(dbcName);
      continue;
    }

    try {
      final dbd = parseDbdFile(dbdFile);

      if (!dbd.hasTargetVersion || dbd.targetFields.isEmpty) {
        noTargetVersion.add(dbd.name);
        continue;
      }

      // 生成代码
      final dartCode = generateDartDefinition(dbd);

      // 输出目录
      final category = categorizeDbc(dbd.name);
      final outDir = Directory('${outputPath.path}/$category');
      if (!outDir.existsSync()) {
        outDir.createSync(recursive: true);
      }

      // 写入文件
      final outFile = File('${outDir.path}/${toSnakeCase(dbd.name)}.dart');
      outFile.writeAsStringSync(dartCode);

      success.add(dbd.name);
      categoryCounts[category] = (categoryCounts[category] ?? 0) + 1;
    } catch (e) {
      errors.add((dbcName, e.toString()));
    }
  }

  // 结果
  print('\n=== 生成结果 ===');
  print('成功: ${success.length}');
  print('无 $targetVersion 版本定义: ${noTargetVersion.length}');
  print('无 .dbd 文件: ${noDbdFile.length}');
  print('错误: ${errors.length}');

  print('\n=== 分类统计 ===');
  for (final entry in categoryCounts.entries.toList()
    ..sort((a, b) => a.key.compareTo(b.key))) {
    print('  ${entry.key}: ${entry.value}');
  }

  if (noTargetVersion.isNotEmpty) {
    print('\n=== 无 $targetVersion 版本定义 ===');
    for (final name in noTargetVersion) {
      print('  $name');
    }
  }

  if (noDbdFile.isNotEmpty) {
    print('\n=== 无 .dbd 文件 ===');
    for (final name in noDbdFile) {
      print('  $name');
    }
  }

  if (errors.isNotEmpty) {
    print('\n=== 错误详情 ===');
    for (final (name, error) in errors) {
      print('  $name: $error');
    }
  }

  // 生成导出文件
  await generateExportsTemplate(success);
}

Future<void> generateExportsTemplate(List<String> successNames) async {
  successNames.sort();

  final lines = <String>[];
  lines.add('// 自动生成的导出文件');
  lines.add('// 基于 WoWDBDefs 生成，版本 $targetVersion');
  lines.add('');

  // 按分类分组
  final byCategory = <String, List<String>>{};
  for (final name in successNames) {
    final cat = categorizeDbc(name);
    byCategory.putIfAbsent(cat, () => []).add(name);
  }

  // 导入语句
  for (final cat in byCategory.keys.toList()..sort()) {
    lines.add('// $cat');
    for (final name in byCategory[cat]!..sort()) {
      final snake = toSnakeCase(name);
      lines.add("import '$cat/$snake.dart' as struct_$snake;");
    }
    lines.add('');
  }

  // Definitions 类
  lines.add('class Definitions {');
  lines.add('  Definitions._();');
  lines.add('');

  for (final name in successNames) {
    final snake = toSnakeCase(name);
    final camel = toCamelCase(name);
    lines.add('  static final $camel = struct_$snake.$camel;');
  }

  lines.add('}');

  final definitionFile = File('${outputPath.path}/definition.dart');
  definitionFile.writeAsStringSync(lines.join('\n'));
  print('\n导出文件已生成: ${definitionFile.path}');
}
