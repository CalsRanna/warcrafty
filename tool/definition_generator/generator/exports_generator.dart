import 'dart:io';

import '../config.dart';
import '../utils/naming.dart';

/// 生成导出文件
Future<void> generateExportsFile(List<String> successNames) async {
  successNames.sort();

  final lines = <String>[];
  lines.add('// 自动生成的导出文件');
  lines.add('// 基于 WoWDBDefs 生成，版本 $targetVersion');
  lines.add('');
  lines.add("import 'package:warcrafty/src/internal/schema.dart';");
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
  lines.add('/// DBC 结构定义集合');
  lines.add('class Definitions {');
  lines.add('  Definitions._();');
  lines.add('');

  for (final name in successNames) {
    final snake = toSnakeCase(name);
    final camel = toCamelCase(name);
    lines.add('  static DbcSchema get $camel => struct_$snake.$camel;');
  }

  lines.add('}');

  final definitionFile = File('${outputPath.path}/definition.dart');
  definitionFile.writeAsStringSync(lines.join('\n'));
  print('\n导出文件已生成: ${definitionFile.path}');
}
