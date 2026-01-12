/// DBC 文件读写示例
///
/// 演示如何使用 warcrafty 库读取和写入 DBC 文件。
library;

import 'package:warcrafty/warcrafty.dart';

void main() async {
  // 示例 1: 使用预定义的格式
  print('=== 示例 1: 使用预定义格式 ===');
  print('Achievement 格式: ${DbcFormats.achievement}');
  print('ChrRaces 结构: ${DbcFormats.chrRacesStruct.name}');

  // 示例 2: 通过字符串查找格式
  print('\n=== 示例 2: 字符串查找 ===');
  final spellFormat = DbcFormatStrings.fromName('Spell');
  print('Spell 格式: $spellFormat');

  final spellStructure = DbcStructures.fromName('Spell');
  print('Spell 字段数: ${spellStructure?.fieldCount}');

  // 示例 3: 使用 DbcLoader 读取文件
  print('\n=== 示例 3: 读取 DBC 文件 ===');
  // 注意: 需要实际的 DBC 文件路径
  // final loader = await DbcLoader.loadFromPath('path/to/chr-races.dbc', DbcFormats.chrRaces);
  // for (final record in loader.records) {
  //   print('ID: ${record.getInt(0)}, Name: ${record.getString(5)}');
  // }
  print('(需要实际的 DBC 文件才能演示读取)');

  // 示例 4: 使用 DbcWriter 写入文件
  print('\n=== 示例 4: 写入 DBC 文件 ===');
  // final records = [
  //   [1, 0, 84, 0, 0, 'Human', '人类'],
  // ];
  // await DbcWriter.writeToPath('output.dbc', DbcFormats.chrRaces, records);
  print('(需要实际的 DBC 文件路径才能演示写入)');

  // 示例 5: 使用索引
  print('\n=== 示例 5: 使用索引 ===');
  // final indexBuilder = DbcIndexBuilder.fromLoader(loader, (r) => r.toMap());
  // final race = indexBuilder.lookup(1);
  print('(需要实际的 DBC 文件才能演示索引)');
}
