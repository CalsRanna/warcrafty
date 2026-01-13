import 'dart:io';

import '../config.dart';
import '../models/models.dart';
import 'column_parser.dart';
import 'field_parser.dart';
import 'version_parser.dart';

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
