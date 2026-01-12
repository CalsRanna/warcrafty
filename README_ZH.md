# Warcrafty

[![Pub Version](https://img.shields.io/pub/v/warcrafty)](https://pub.dev/packages/warcrafty)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT)

一个高性能的 Dart 库，用于读写魔兽世界客户端使用的 DBC (Database Client) 文件。

[English](README.md)

## 功能特性

- **高性能**: 使用 `ByteData` 和 `Uint8List` 进行高效的二进制数据处理
- **格式字符串驱动**: 灵活的解析方式，与 AzerothCore 格式字符串完全兼容
- **预建字符串索引**: O(1) 时间复杂度的字符串查找
- **ID 索引支持**: 基于 ID 的索引构建和二分搜索
- **完整读写支持**: 提供 DBC 文件的完整读取和写入功能
- **字符串去重**: 写入时自动进行字符串去重以减少文件大小
- **异步支持**: 支持同步和异步操作
- **类型安全**: 完整的 Dart 类型安全，丰富的异常处理
- **预定义格式**: 内置 100+ 个常用 DBC 格式定义

## 安装

在 `pubspec.yaml` 中添加依赖：

```yaml
dependencies:
  warcrafty: ^1.0.0
```

然后运行：

```bash
dart pub get
```

## 快速开始

```dart
import 'package:warcrafty/warcrafty.dart';

void main() {
  // 读取 DBC 文件
  final loader = DbcLoader.loadFromPath('ChrRaces.dbc', 'niiiisssssssssssssssss');

  // 遍历所有记录
  for (final record in loader.records) {
    print('ID: ${record.getInt(0)}, Name: ${record.getString(5)}');
  }

  // 使用索引快速查找
  final indexBuilder = DbcIndexBuilder.fromLoader(loader, (record) => record.toMap());
  final race = indexBuilder.lookup(1);

  loader.close();

  // 写入 DBC 文件
  DbcWriter.writeToPath('output.dbc', 'niiiiss', [
    [1, 0, 84, 0, 0, 'Human', '人类'],
  ]);
}
```

## 格式字符串参考

格式字符串定义每条记录的结构，每个字符代表一种字段类型：

| 字符 | 类型 | 大小 | 说明 |
|------|------|------|------|
| `n` | 索引字段 | 4 字节 | ID 字段，用于快速查找 |
| `i` | 整数 | 4 字节 | 32 位有符号整数 |
| `b` | 字节 | 1 字节 | 8 位无符号整数 |
| `f` | 浮点 | 4 字节 | 32 位浮点数 |
| `s` | 字符串 | 4 字节 | 字符串偏移量（指向字符串块）|
| `x` | 跳过 | 4 字节 | 未知/跳过字段 |
| `X` | 跳过字节 | 1 字节 | 未知/跳过字节字段 |
| `d` | 排序 | 4 字节 | 排序字段（不包含在数据中）|
| `l` | 布尔 | 4 字节 | 布尔值/逻辑值 |

## API 参考

### DbcLoader

读取 DBC 文件：

```dart
// 从文件路径加载
final loader = DbcLoader.loadFromPath('path/to/file.dbc', 'niiiiss');

// 异步加载
final loader = DbcLoader('path/to/file.dbc');
await loader.loadAsync('niiiiss');

// 获取记录数量和字段数量
print(loader.recordCount);
print(loader.fieldCount);

// 迭代所有记录
for (final record in loader.records) {
  // 处理记录
}

// 使用完毕后关闭
loader.close();
```

### DbcRecord

访问记录字段：

```dart
final record = loader.getRecord(0);

// 读取整数
final id = record.getInt(0);
final unsigned = record.getUint(0);

// 读取浮点数
final float = record.getFloat(0);

// 读取字符串
final name = record.getString(5);

// 转换为 Map
final map = record.toMap();
```

### DbcWriter

写入 DBC 文件：

```dart
// 写入文件
DbcWriter.writeToPath('output.dbc', 'nii', [
  [1, 100, 200],
  [2, 300, 400],
]);

// 异步写入
await DbcWriter.writeToPathAsync('output.dbc', 'nii', records);

// 从现有文件复制并修改
DbcWriter.copyWithModify(
  sourcePath: 'input.dbc',
  sourceFormat: 'niiiiss',
  outputPath: 'output.dbc',
  modify: (source) => [
    source.getInt(0),
    source.getInt(1) + 1,
    // ...
  ],
);
```

### DbcIndexBuilder

构建基于 ID 的索引以实现快速查找：

```dart
final indexBuilder = DbcIndexBuilder.fromLoader(loader, (record) {
  return {'ID': record.getInt(0), 'Name': record.getString(5)};
});

// O(1) 通过 ID 查找
final record = indexBuilder.lookup(1);

// 检查 ID 是否存在
print(indexBuilder.contains(1));

// 获取所有 ID
print(indexBuilder.allIds);
```

## 预定义格式

库内置了 100+ 个常用 DBC 格式定义：

```dart
import 'package:warcrafty/warcrafty.dart';

// 使用预定义格式
final loader = DbcLoader.loadFromPath('ChrRaces.dbc', DbcFormats.chrRaces);
```

支持的格式类别：
- **角色相关**: ChrRaces, ChrClasses, CharTitles, Talent
- **物品相关**: Item, ItemSet, ItemExtendedCost, GemProperties
- **法术相关**: Spell, SpellRange, SpellDuration, SpellRadius
- **技能相关**: SkillLine, SkillLineAbility
- **GT 表**: GtCombatRatings, GtChanceToSpellCrit 等
- **其他**: Achievement, Faction, Map, Quest 等

## 兼容性

兼容以下服务器模拟器的 DBC 文件：
- AzerothCore
- TrinityCore
- MaNGOS
- 其他魔兽世界服务器模拟器

格式字符串与 AzerothCore 的 DBC 格式定义完全兼容。

## 测试

```bash
dart test
```

## 许可证

MIT 许可证 - 详见 [LICENSE](LICENSE) 文件。

## 致谢

- [AzerothCore](https://www.azerothcore.org/) - DBC 格式参考实现
