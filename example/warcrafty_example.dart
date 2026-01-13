/// DBC 文件读写完整示例
///
/// 演示如何使用 warcrafty 库读取、写入和处理 DBC 文件。
// ignore_for_file: unused_local_variable, non_constant_identifier_names

library;

import 'dart:io';
import 'package:warcrafty/warcrafty.dart';

void main() async {
  print('=' * 80);
  print('WARCRAFTY DBC 库使用示例');
  print('=' * 80);

  // 示例 1: 使用预定义的结构
  print('\n=== 示例 1: 使用预定义结构 ===');
  await example1_PredefinedSchemas();

  // 示例 2: 读取 DBC 文件
  print('\n=== 示例 2: 读取 DBC 文件 ===');
  await example2_ReadingDbcFiles();

  // 示例 3: 写入 DBC 文件
  print('\n=== 示例 3: 写入 DBC 文件 ===');
  await example3_WritingDbcFiles();

  // 示例 4: 使用索引快速查找
  print('\n=== 示例 4: 使用索引 ===');
  await example4_UsingIndexes();

  // 示例 5: 从字节数据加载
  print('\n=== 示例 5: 从字节数据加载 ===');
  await example5_LoadingFromBytes();

  // 示例 6: 复制并修改现有文件
  print('\n=== 示例 6: 复制并修改文件 ===');
  await example6_CopyAndModify();

  // 示例 7: 创建自定义结构
  print('\n=== 示例 7: 自定义结构 ===');
  await example7_CustomSchema();

  // 示例 8: 错误处理
  print('\n=== 示例 8: 错误处理 ===');
  await example8_ErrorHandling();

  // 示例 9: 处理本地化字段
  print('\n=== 示例 9: 本地化字段 ===');
  await example9_LocalizedFields();

  print('\n${'=' * 80}');
  print('所有示例完成！');
  print('=' * 80);
}

/// 示例 1: 使用预定义结构
Future<void> example1_PredefinedSchemas() async {
  print('ChrRaces 结构名: ${Definitions.chrRaces.name}');
  print('ChrRaces 格式: ${Definitions.chrRaces.format}');
  print('ChrRaces 字段数: ${Definitions.chrRaces.fieldCount}');
  print('ChrRaces 记录大小: ${Definitions.chrRaces.recordSize} 字节');

  // 查找特定字段
  final idField = Definitions.chrRaces.getFieldByName('ID');
  if (idField != null) {
    print(
      '找到 ID 字段: ${idField.name} (索引: ${idField.index}, 类型: ${idField.type})',
    );
  }

  print('可用的预定义结构超过 200 个，涵盖所有主要 DBC 文件');
}

/// 示例 2: 读取 DBC 文件
Future<void> example2_ReadingDbcFiles() async {
  // 注意: 需要实际的 DBC 文件路径才能运行此示例
  const dbcPath = 'ChrRaces.dbc';

  if (!File(dbcPath).existsSync()) {
    print('文件不存在: $dbcPath');
    print('跳过此示例 - 请提供实际的 DBC 文件路径');
    return;
  }

  // 使用预定义格式加载
  final loader = DbcLoader(dbcPath, Definitions.chrRaces.format);

  print('文件: $dbcPath');
  print('记录数: ${loader.recordCount}');
  print('字段数: ${loader.fieldCount}');

  // 读取第一条记录
  if (loader.recordCount > 0) {
    final firstRecord = loader.getRecord(0);
    final id = firstRecord.getInt(0);
    print('第一条记录 ID: $id');

    // 尝试读取名称字段
    try {
      final name = firstRecord.getString(14); // Name_lang 字段
      print('第一条记录名称: $name');
    } catch (e) {
      print('无法读取名称字段: $e');
    }
  }

  // 遍历所有记录（前 5 条）
  print('\n前 5 条记录:');
  final count = loader.recordCount > 5 ? 5 : loader.recordCount;
  for (int i = 0; i < count; i++) {
    final record = loader.getRecord(i);
    final id = record.getInt(0);
    print('  记录 $i: ID = $id');
  }

  // 将所有记录转换为 Map
  print('\n转换为 Map 列表 (前 3 条):');
  final maps = loader.toMapList();
  for (int i = 0; i < (maps.length > 3 ? 3 : maps.length); i++) {
    print('  Map $i: ${maps[i]}');
  }
}

/// 示例 3: 写入 DBC 文件
Future<void> example3_WritingDbcFiles() async {
  final outputPath = 'example_output.dbc';

  // 创建测试数据
  final records = [
    [1, 0, 84, 0, 0, 'Human', 'Human'], // 简单格式
    [2, 1, 74, 0, 0, 'Orc', 'Orc'],
    [3, 2, 69, 0, 0, 'Night Elf', 'Night Elf'],
  ];

  print('准备写入 $records.length 条记录到: $outputPath');

  // 同步写入
  DbcWriter.writeToPath(outputPath, 'niiiiss', records);
  print('同步写入完成');

  // 验证文件是否创建
  if (File(outputPath).existsSync()) {
    print('文件已创建: ${File(outputPath).lengthSync()} 字节');

    // 读取验证
    final loader = DbcLoader(outputPath, 'niiiiss');
    print('验证读取: ${loader.recordCount} 条记录');

    // 清理测试文件
    File(outputPath).deleteSync();
    print('已清理测试文件');
  }
}

/// 示例 4: 使用索引
Future<void> example4_UsingIndexes() async {
  const dbcPath = 'ChrRaces.dbc';

  if (!File(dbcPath).existsSync()) {
    print('文件不存在: $dbcPath，跳过索引示例');
    return;
  }

  final loader = DbcLoader(dbcPath, Definitions.chrRaces.format);

  // 创建索引（从加载器）
  final index = DbcIndex.fromLoader(loader, (record) => record.toMap());

  print('索引创建完成');
  print('索引记录数: ${index.count}');
  print('索引字段: ${index.indexField}');

  // 获取所有 ID
  final allIds = index.allIds;
  print(
    '所有 ID: ${allIds.take(10).join(', ')}${allIds.length > 10 ? '...' : ''}',
  );

  // 快速查找
  if (allIds.isNotEmpty) {
    final firstId = allIds.first;
    final record = index.lookup(firstId);
    print('查找 ID $firstId: ${record != null ? "找到" : "未找到"}');
  }

  // 使用 contains 检查
  final testId = 1;
  if (index.contains(testId)) {
    print('索引包含 ID $testId');
  } else {
    print('索引不包含 ID $testId');
  }

  // 使用索引器
  final record = index[testId];
  if (record != null) {
    print('通过索引器找到 ID $testId: $record');
  }
}

/// 示例 5: 从字节数据加载
Future<void> example5_LoadingFromBytes() async {
  const dbcPath = 'ChrRaces.dbc';

  if (!File(dbcPath).existsSync()) {
    print('文件不存在: $dbcPath，跳过字节加载示例');
    return;
  }

  // 读取文件为字节
  final bytes = File(dbcPath).readAsBytesSync();
  print('读取文件为字节: ${bytes.length} 字节');

  // 从字节加载
  final loader = DbcLoader.fromBytes(bytes, Definitions.chrRaces.format);
  print('从字节加载完成: ${loader.recordCount} 条记录');

  // 比较：验证内容相同
  final fileLoader = DbcLoader(dbcPath, Definitions.chrRaces.format);
  print('文件加载验证: ${fileLoader.recordCount} 条记录');
  print('字节加载与文件加载结果相同: ${loader.recordCount == fileLoader.recordCount}');
}

/// 示例 6: 复制并修改文件
Future<void> example6_CopyAndModify() async {
  const inputPath = 'ChrRaces.dbc';
  const outputPath = 'example_modified.dbc';

  if (!File(inputPath).existsSync()) {
    print('文件不存在: $inputPath，跳过复制修改示例');
    return;
  }

  print('从 $inputPath 复制并修改到 $outputPath');

  DbcWriter.copyWithModify(inputPath, Definitions.chrRaces.format, outputPath, (
    source,
  ) {
    // 获取原始数据
    final id = source.getInt(0);
    final flags = source.getInt(1);
    final factionId = source.getInt(2);

    // 修改一些值（示例：增加 faction ID）
    return [
      id,
      flags,
      factionId + 1000, // 修改 faction ID
      source.getInt(3),
      source.getInt(4),
      source.getInt(5),
      source.getString(6),
      source.getInt(7),
      source.getInt(8),
      source.getInt(9),
      source.getInt(10),
      source.getString(11),
      source.getInt(12),
      source.getInt(13),
      source.getString(14),
      source.getString(15),
      // ... 其他字段（注意：这里为了简化只复制了部分字段）
    ];
  });

  print('复制修改完成');

  // 验证结果
  if (File(outputPath).existsSync()) {
    final outputLoader = DbcLoader(outputPath, Definitions.chrRaces.format);
    print('输出文件记录数: ${outputLoader.recordCount}');

    // 清理
    File(outputPath).deleteSync();
    print('已清理输出文件');
  }
}

/// 示例 7: 自定义结构
Future<void> example7_CustomSchema() async {
  // 创建自定义结构
  final customSchema = DbcSchema(
    name: 'CustomItem',
    format: 'niiiissff',
    fields: [
      const Field(
        index: 0,
        name: 'ID',
        description: 'Item ID',
        type: FieldType.id,
      ),
      const Field(
        index: 1,
        name: 'Class',
        description: 'Item Class',
        type: FieldType.int32,
      ),
      const Field(
        index: 2,
        name: 'SubClass',
        description: 'Item SubClass',
        type: FieldType.int32,
      ),
      const Field(
        index: 3,
        name: 'SoundID',
        description: 'Item SoundID',
        type: FieldType.int32,
      ),
      const Field(
        index: 4,
        name: 'DisplayID',
        description: 'Item DisplayID',
        type: FieldType.int32,
      ),
      const Field(
        index: 5,
        name: 'InventoryIcon',
        description: 'Item InventoryIcon',
        type: FieldType.string,
      ),
      const Field(
        index: 6,
        name: 'Name',
        description: 'Item Name',
        type: FieldType.string,
      ),
      const Field(
        index: 7,
        name: 'Price',
        description: 'Item Price',
        type: FieldType.float,
      ),
      const Field(
        index: 8,
        name: 'Quality',
        description: 'Item Quality',
        type: FieldType.float,
      ),
    ],
  );

  print('自定义结构创建: ${customSchema.name}');
  print('格式: ${customSchema.format}');
  print('字段数: ${customSchema.fieldCount}');
  print('记录大小: ${customSchema.recordSize} 字节');

  // 使用自定义结构
  final outputPath = 'custom_example.dbc';
  final records = [
    [1001, 2, 5, 0, 12345, 'inv_sword_04', 'Sword of Power', 1000.0, 0.5],
    [1002, 2, 5, 0, 12346, 'inv_axe_04', 'Axe of Fury', 1200.0, 0.6],
  ];

  DbcWriter.writeToPath(outputPath, customSchema.format, records);
  print('写入自定义结构文件: $outputPath');

  // 验证读取
  final loader = DbcLoader(outputPath, customSchema.format);
  print('读取验证: ${loader.recordCount} 条记录');

  for (final record in loader.records) {
    final id = record.getInt(0);
    final name = record.getString(6);
    final price = record.getFloat(7);
    print('  ID: $id, 名称: $name, 价格: $price');
  }

  // 清理
  File(outputPath).deleteSync();
  print('已清理自定义文件');
}

/// 示例 8: 错误处理
Future<void> example8_ErrorHandling() async {
  print('演示各种错误情况');

  // 错误 1: 无效的格式字符串
  try {
    final loader = DbcLoader('dummy.dbc', 'xyz');
    print('不应该到达这里');
  } catch (e) {
    print('✓ 捕获到格式字符串错误: ${e.toString().split(':')[0]}');
  }

  // 错误 2: 尝试读取不存在的文件
  try {
    final loader = DbcLoader('nonexistent.dbc', 'niiiiss');
    print('不应该到达这里');
  } catch (e) {
    print('✓ 捕获到文件错误: ${e.toString().split(':')[0]}');
  }

  // 错误 3: 字段类型不匹配
  try {
    DbcWriter.writeToPath('error_test.dbc', 'ni', [
      [1, 'not_a_number'], // 第二个字段应该是数字
    ]);
  } catch (e) {
    print('✓ 捕获到字段类型错误: ${e.toString().split(':')[0]}');
    // 清理可能创建的文件
    if (File('error_test.dbc').existsSync()) {
      File('error_test.dbc').deleteSync();
    }
  }

  print('错误处理示例完成');
}

/// 示例 9: 处理本地化字段
Future<void> example9_LocalizedFields() async {
  const dbcPath = 'ChrRaces.dbc';

  if (!File(dbcPath).existsSync()) {
    print('文件不存在: $dbcPath，跳过本地化示例');
    return;
  }

  final loader = DbcLoader(dbcPath, Definitions.chrRaces.format);

  print('ChrRaces 结构包含本地化字段:');
  print('  名称字段范围: 14-30 (16 种语言)');
  print('  女性名称字段范围: 31-47 (16 种语言)');
  print('  男性名称字段范围: 48-64 (16 种语言)');

  if (loader.recordCount > 0) {
    final firstRecord = loader.getRecord(0);

    print('\n示例记录 (索引 0):');
    print('  ID: ${firstRecord.getInt(0)}');
    print('  标志: ${firstRecord.getInt(1)}');

    // 尝试读取本地化名称
    try {
      // 通常英语是第一个本地化字段
      final englishName = firstRecord.getString(14);
      print('  英语名称: $englishName');
    } catch (e) {
      print('  无法读取本地化字段: $e');
    }
  }

  print('\n注意: 实际的本地化字段索引取决于具体结构定义');
}
