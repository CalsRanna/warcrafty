// tool/definition_generator/main.dart
// WoWDBDefs .dbd 文件解析器和 Dart 定义生成器
//
// 使用方法:
// dart run tool/definition_generator/main.dart [options]
//
// 默认目标版本: 3.3.5.12340 (巫妖王之怒最后补丁)

import 'dart:io';

import 'package:warcrafty/src/internal/header.dart';
import 'package:warcrafty/src/internal/offset.dart';

import 'config.dart';
import 'generator/generator.dart';
import 'parser/parser.dart';
import 'utils/naming.dart';

void main(List<String> args) async {
  final GeneratorConfig config;
  try {
    config = GeneratorConfig.fromArgs(args);
  } on UsageRequested {
    print(generatorUsage());
    return;
  } on ArgumentError catch (e) {
    print('Error: ${e.message}');
    print(generatorUsage());
    exit(64);
  }

  print('WoWDBDefs .dbd 解析器');
  print('目标版本: ${config.targetVersion}');
  print('WoWDBDefs 路径: ${config.wowDBDefsPath.path}');
  print('DBC 文件路径: ${config.dbcPath.path}');
  print('输出路径: ${config.outputPath.path}');
  print('');

  if (!config.wowDBDefsPath.existsSync()) {
    print('Error: WoWDBDefs path not found');
    exit(1);
  }

  if (!config.dbcPath.existsSync()) {
    print('Error: DBC path not found');
    exit(1);
  }

  // 获取用户的 DBC 文件列表
  final dbcFiles = config.dbcPath
      .listSync()
      .whereType<File>()
      .where((f) => f.path.toLowerCase().endsWith('.dbc'))
      .map(
        (f) => f.uri.pathSegments.last.replaceAll(
          RegExp(r'\.dbc$', caseSensitive: false),
          '',
        ),
      )
      .toSet();

  print('发现 ${dbcFiles.length} 个 DBC 文件');

  final success = <String>[];
  final noTargetVersion = <String>[];
  final noDbdFile = <String>[];
  final errors = <(String, String)>[];
  final categoryCounts = <String, int>{};
  final pendingWrites = <({File outFile, String code})>[];

  // 只处理用户有的 DBC 文件
  for (final dbcName in dbcFiles.toList()..sort()) {
    final dbdFile = File('${config.wowDBDefsPath.path}/$dbcName.dbd');
    final dbcFile = File('${config.dbcPath.path}/$dbcName.dbc');

    if (!dbdFile.existsSync()) {
      noDbdFile.add(dbcName);
      continue;
    }

    try {
      final dbd = parseDbdFile(dbdFile, config.targetVersion);

      if (!dbd.hasTargetVersion || dbd.targetFields.isEmpty) {
        noTargetVersion.add(dbd.name);
        continue;
      }

      final format = buildFormatString(dbd);
      _validateDbcHeader(dbcFile, format);

      // 生成代码
      final dartCode = generateDartDefinition(dbd, config.targetVersion);

      // 输出目录
      final category = categorizeDbc(dbd.name);
      final outDir = Directory('${config.outputPath.path}/$category');
      final outFile = File('${outDir.path}/${toSnakeCase(dbd.name)}.dart');

      pendingWrites.add((outFile: outFile, code: dartCode));
      success.add(dbd.name);
      categoryCounts[category] = (categoryCounts[category] ?? 0) + 1;
    } catch (e) {
      errors.add((dbcName, e.toString()));
    }
  }

  // 结果
  print('\n=== 生成结果 ===');
  print('成功: ${success.length}');
  print('无 ${config.targetVersion} 版本定义: ${noTargetVersion.length}');
  print('无 .dbd 文件: ${noDbdFile.length}');
  print('错误: ${errors.length}');

  print('\n=== 分类统计 ===');
  for (final entry
      in categoryCounts.entries.toList()
        ..sort((a, b) => a.key.compareTo(b.key))) {
    print('  ${entry.key}: ${entry.value}');
  }

  if (noTargetVersion.isNotEmpty) {
    print('\n=== 无 ${config.targetVersion} 版本定义 ===');
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

  if (noTargetVersion.isNotEmpty || noDbdFile.isNotEmpty || errors.isNotEmpty) {
    print('\n生成失败：存在缺失定义或错误，未写入任何文件。');
    exit(1);
  }

  if (config.outputPath.existsSync()) {
    config.outputPath.deleteSync(recursive: true);
  }
  config.outputPath.createSync(recursive: true);

  for (final pending in pendingWrites) {
    pending.outFile.parent.createSync(recursive: true);
    pending.outFile.writeAsStringSync(pending.code);
  }

  // 生成导出文件
  await generateExportsFile(success, config.outputPath, config.targetVersion);
}

void _validateDbcHeader(File file, String format) {
  final bytes = file.openSync();
  try {
    final header = DbcHeader.fromBytes(bytes.readSync(DbcHeader.size));
    final offsets = FieldOffsets(format);

    if (header.fieldCount != format.length) {
      throw FormatException(
        'Field count mismatch: header=${header.fieldCount}, format=${format.length}',
      );
    }
    if (header.recordSize != offsets.recordSize) {
      throw FormatException(
        'Record size mismatch: header=${header.recordSize}, format=${offsets.recordSize}',
      );
    }
  } finally {
    bytes.closeSync();
  }
}
