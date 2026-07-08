import 'dart:io';

import '../models/models.dart';
import 'column_parser.dart';
import 'field_parser.dart';
import 'version_parser.dart';

/// 解析 .dbd 文件，提取精确匹配目标版本的字段定义。
DbdFile parseDbdFile(File file, String targetVersion, {bool debug = false}) {
  final dbd = DbdFile(file.uri.pathSegments.last.replaceAll('.dbd', ''));
  final content = file.readAsStringSync();
  final lines = content.split('\n');

  var inColumns = false;
  var inTargetVersion = false;
  var foundTarget = false;

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
        dbd.columns[col.name] = col;
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
        dbd.targetFields.add(field);
      }
    }
  }

  return dbd;
}
