// tool/definition_generator/main.dart
// WoWDBDefs .dbd 文件解析器和 Dart 定义生成器
//
// 使用方法:
// dart run tool/definition_generator/main.dart
//
// 目标版本: 3.3.5.12340 (巫妖王之怒最后补丁)

import 'dart:io';

import 'config.dart';
import 'generator/generator.dart';
import 'parser/parser.dart';
import 'utils/naming.dart';

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
  for (final entry
      in categoryCounts.entries.toList()
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
  await generateExportsFile(success);
}
