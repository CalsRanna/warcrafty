# Warcrafty

[![Pub Version](https://img.shields.io/pub/v/warcrafty)](https://pub.dev/packages/warcrafty)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT)
[![Dart SDK](https://img.shields.io/badge/Dart-3.10%2B-blue.svg)](https://dart.dev)

一个高性能的 **纯 Dart** 库，用于读写魔兽世界客户端使用的 DBC (Database Client) 二进制文件，可选支持通过 StormLib FFI 读写 MPQ 归档。

[English](README.md)

## 目录

- [功能特性](#功能特性)
- [安装](#安装)
- [快速开始](#快速开始)
- [核心 API](#核心-api)
  - [DbcLoader](#dbcloader)
  - [DbcRecord](#dbcrecord)
  - [DbcWriter](#dbcwriter)
  - [DbcIndex](#dbcindex)
- [格式字符串参考](#格式字符串参考)
- [预定义结构](#预定义结构)
- [MPQ 归档支持](#mpq-归档支持)
- [高级用法](#高级用法)
- [兼容性](#兼容性)
- [测试](#测试)
- [性能](#性能)
- [许可证](#许可证)
- [致谢](#致谢)

## 功能特性

- **纯 Dart 实现**: DBC 操作无需外部 C 库
- **高性能**: 使用 `ByteData` 和 `Uint8List` 进行高效的二进制数据处理
- **格式字符串驱动**: 灵活的解析方式，明确支持 Warcrafty 与 AzerothCore 两种格式方言
- **O(1) 字符串查找**: 预建字符串索引，常数时间复杂度访问
- **基于 ID 的索引**: 使用哈希表快速查找记录
- **完整读写支持**: 提供 DBC 文件的完整读取和写入功能，含类型校验
- **MPQ 归档支持**: 通过 StormLib FFI 读写暴雪 MPQ 归档
- **字符串去重**: 写入时自动进行字符串去重以减少文件大小
- **同步与异步**: 同时支持同步和异步 API
- **类型安全**: 完整的 Dart 类型安全，丰富的异常处理
- **245 个预定义结构**: 内置所有主要 DBC 文件的格式定义
- **结构验证**: 运行时验证格式字符串、字段类型和写入时类型检查

## 安装

在 `pubspec.yaml` 中添加依赖：

```yaml
dependencies:
  warcrafty: ^2.0.0
```

然后运行：

```bash
dart pub get
```

## 快速开始

```dart
import 'package:warcrafty/warcrafty.dart';

void main() {
  // 使用预定义结构读取 DBC 文件
  final loader = DbcLoader('ChrRaces.dbc', Definitions.chrRaces.format);

  // 遍历所有记录
  for (final record in loader.records) {
    final id = record.getInt(0);
    final name = record.getString(14); // 第一个本地化名称字段
    print('ID: $id, 名称: $name');
  }

  // 构建索引以实现 O(1) 快速查找
  final index = DbcIndex<Map<String, dynamic>>.fromLoader(
    loader,
    (record) => record.toMap(),
  );
  final raceData = index.lookup(1); // 获取 ID 为 1 的种族

  // 写入 DBC 文件（含类型校验）
  DbcWriter.writeToPath('output.dbc', 'niiiiss', [
    [1, 0, 84, 0, 0, 'Human', 'Human'],
  ]);

  // 打开 MPQ 归档并提取 DBC 文件
  final mpq = MpqArchive.open('patch-zhCN.MPQ');
  final dbcBytes = mpq.extract(r'DBFilesClient\ChrRaces.dbc');
  final mpqLoader = DbcLoader.fromBytes(dbcBytes, Definitions.chrRaces.format);
  mpq.close();
}
```

## 核心 API

### DbcLoader

从多种来源读取 DBC 文件：

```dart
// 从文件路径加载（同步）
final loader = DbcLoader('ChrRaces.dbc', 'niiiisssssssssssssssss');

// 异步加载
final loader = await DbcLoader.loadAsync('ChrRaces.dbc', 'niiiiss');

// 从字节数据加载
final bytes = File('ChrRaces.dbc').readAsBytesSync();
final loader = DbcLoader.fromBytes(bytes, 'niiiiss');

// 访问文件元数据
print('记录数: ${loader.recordCount}');
print('字段数: ${loader.fieldCount}');
print('格式: ${loader.format}');

// 迭代所有记录
for (final record in loader.records) {
  // 处理每条记录
}

// 访问特定记录
final firstRecord = loader.getRecord(0);

// 将所有记录转换为 Map
final allData = loader.toMapList();
```

### DbcRecord

使用类型安全的方法访问单条记录的字段：

```dart
final record = loader.getRecord(0);

// 读取整数（32 位有符号）
final id = record.getInt(0);
final value = record.getInt(5);

// 读取无符号整数（32 位）
final unsigned = record.getUint(1);

// 读取 8 位有符号/无符号整数
final byteSigned = record.getInt8(0);
final byteUnsigned = record.getUint8(0);

// 读取 16 位有符号/无符号整数
final shortSigned = record.getInt16(0);
final shortUnsigned = record.getUint16(0);

// 读取 64 位有符号/无符号整数
final longSigned = record.getInt64(0);
final longUnsigned = record.getUint64(0);

// 读取浮点数（32 位）
final floatValue = record.getFloat(3);

// 读取字符串（从字符串块）
final name = record.getString(5);

// 读取原始字节
final rawBytes = record.getBytes(0, 4);

// 转换为 Map
final map = record.toMap();

// 访问字段数量
final fieldCount = record.fieldCount;
```

### DbcWriter

写入 DBC 文件并自动进行字符串去重：

```dart
// 写入文件（同步）
DbcWriter.writeToPath('output.dbc', 'niiiiss', [
  [1, 0, 84, 0, 0, 'Human', 'Human'],
  [2, 1, 74, 0, 0, 'Orc', 'Orc'],
]);

// 异步写入
await DbcWriter.writeToPathAsync('output.dbc', 'niiiiss', [
  [1, 0, 84, 0, 0, 'Human', 'Human'],
]);

// 从现有文件复制并修改
DbcWriter.copyWithModify(
  'input.dbc',
  'niiiiss',
  'output.dbc',
  (source) => [
    source.getInt(0),
    source.getInt(1) + 1,
    source.getInt(2),
    source.getInt(3),
    source.getInt(4),
    source.getString(5),
    source.getString(6),
  ],
);

// 自定义写入器实例
final writer = DbcWriter('custom.dbc', 'niiiiss');
writer.write([
  [1, 0, 84, 0, 0, 'Human', 'Human'],
]);

// 写入时类型校验 — 以下会抛出 WriteException：
//   [1, '不是整数', 84, ...]    // 期望 int 但拿到 String
//   [1, 300, 84, ...]           // uint8 超出范围（0-255）
//   [1, true, 84, ...]          // 期望 int 但拿到 bool
```

### DbcIndex

构建基于 ID 的索引以实现 O(1) 快速查找：

```dart
// 从加载器创建索引
final index = DbcIndex.fromLoader(loader, (record) => record.toMap());

// 通过 ID 查找
final record = index.lookup(1);
if (record != null) {
  print('找到: $record');
}

// 查找或抛出异常（如果不存在）
final record = index.lookupOrThrow(1);

// 检查 ID 是否存在
if (index.contains(1)) {
  print('ID 1 存在');
}

// 获取所有 ID
final allIds = index.allIds;

// 通过索引器访问
final record = index[1];

// 获取索引统计信息
print('总记录数: ${index.count}');
print('索引字段: ${index.indexField}');

// 获取所有记录（不可修改）
final allRecords = index.records;

// 索引支持泛型 — 可以直接操作 DbcRecord
final typedIndex = DbcIndex<DbcRecord>.fromLoader(
  loader,
  (r) => r,
);
final spellRecord = typedIndex.lookup(133); // ID 为 133 的法术
```

## 格式字符串参考

格式字符串定义 DBC 记录的结构。Warcrafty 2.0 明确支持两种方言：

- `DbcFormatDialect.warcrafty`（默认）：带明确整数宽度和有无符号信息的扩展类型方言。
- `DbcFormatDialect.azerothCore`：兼容 AzerothCore/TrinityCore `DBCfmt.h` 的方言（`x X s f i b d n l`；`i` 按 `uint32` 解释）。

默认 Warcrafty 方言中，每个字符代表一种字段类型：

| 字符 | 类型 | 大小 | 描述 |
|------|------|------|------|
| `n` | ID 字段 | 4 字节 | 索引字段（ID）用于快速查找 - 32 位有符号整数 |
| `B` | Int8 | 1 字节 | 8 位有符号整数 |
| `b` | Uint8 | 1 字节 | 8 位无符号整数（0-255） |
| `h` | Int16 | 2 字节 | 16 位有符号整数 |
| `H` | Uint16 | 2 字节 | 16 位无符号整数 |
| `i` | Int32 | 4 字节 | 32 位有符号整数 |
| `u` | Uint32 | 4 字节 | 32 位无符号整数 |
| `q` | Int64 | 8 字节 | 64 位有符号整数 |
| `Q` | Uint64 | 8 字节 | 64 位无符号整数 |
| `f` | 浮点数 | 4 字节 | 32 位浮点数 |
| `s` | 字符串 | 4 字节 | 字符串偏移量（指向字符串块）|
| `x` | 未使用 | 4 字节 | 未知/跳过字段（32 位）|
| `X` | 未使用字节 | 1 字节 | 未知/跳过字段（8 位）|
| `d` | 排序 | 4 字节 | 排序字段（不包含在数据中）|
| `l` | 布尔值 | 4 字节 | 布尔值/逻辑值（存储为 32 位整数）|

> **AzerothCore 方言**: 在 `DbcFormatDialect.azerothCore` 模式下，`i` 按 `uint32` 解释，`b` 按 `uint8` 解释。扩展字符（`B`、`h`、`H`、`u`、`q`、`Q`）在此方言中无效。

### 格式字符串示例

```dart
// 简单记录：ID + 2 个整数 + 2 个字符串
'niiiiss'

// 扩展整数宽度：ID + int8 + uint8 + int16 + uint16 + int32 + uint32 + int64 + uint64
'nBbhHiuqQ'

// 种族角色：ID + 标志 + 阵营 + 2 个显示 ID + 2 个字符串 + 45 个本地化字符串
'niiiiisiiiisiissssssssssssssssssssssssssssssssssssssssssssssssssssssi'

// 显式读取 AzerothCore DBCfmt.h 风格格式字符串
final loader = DbcLoader(
  'SpellItemEnchantmentCondition.dbc',
  'nbbbbbxxxxxbbbbbbbbbbiiiiiXXXXX',
  dialect: DbcFormatDialect.azerothCore,
);
```

## 预定义结构

库内置了 **245 个预定义格式定义**，覆盖所有主要 DBC 文件：

```dart
import 'package:warcrafty/warcrafty.dart';

// 使用预定义结构
final loader = DbcLoader('ChrRaces.dbc', Definitions.chrRaces.format);

// 访问结构信息
print('结构名: ${Definitions.chrRaces.name}');
print('格式: ${Definitions.chrRaces.format}');
print('字段数: ${Definitions.chrRaces.fieldCount}');

// 按名称查找字段
final field = Definitions.chrRaces.getFieldByName('ID');
```

### 可用分类

- **成就 (Achievement)**: Achievement, Achievement_Category, Achievement_Criteria
- **区域 (Area)**: AreaTable, AreaGroup, AreaPOI, AreaTrigger, WMOAreaTable, WorldMapArea, WorldMapContinent, WorldSafeLocs
- **角色 (Character)**: ChrRaces, ChrClasses, CharBaseInfo, CharHairGeosets, CharHairTextures, CharSections, CharStartOutfit, CharTitles
- **生物 (Creature)**: CreatureDisplayInfo, CreatureFamily, CreatureModelData, CreatureMovementInfo, CreatureSpellData, CreatureType
- **阵营 (Faction)**: Faction, FactionGroup, FactionTemplate
- **游戏对象 (GameObject)**: GameObjectDisplayInfo, GameObjectArtKit
- **物品 (Item)**: Item, ItemBagFamily, ItemClass, ItemDisplayInfo, ItemExtendedCost, ItemSet, GemProperties
- **光照 (Light)**: Light, LightFloatBand, LightIntBand, LightParams, LightSkybox
- **地图 (Map)**: Map, DungeonEncounter, DungeonMap, DungeonMapChunk, LFGDungeons, MapDifficulty
- **任务 (Quest)**: QuestInfo, QuestSort, QuestXP, QuestFactionReward
- **技能 (Skill)**: SkillLine, SkillLineAbility, SkillCostsData, SkillRaceClassInfo, SkillTiers
- **音效 (Sound)**: SoundEntries, SoundAmbience, SoundEmitters, SoundFilter, SoundWaterType
- **法术 (Spell)**: Spell, SpellCastTimes, SpellDuration, SpellIcon, SpellItemEnchantment, SpellRadius, SpellRange, SpellVisual, GlyphProperties, TotemCategory
- **天赋 (Talent)**: Talent, TalentTab
- **出租车 (Taxi)**: TaxiNodes, TaxiPath, TaxiPathNode
- **载具 (Vehicle)**: Vehicle, VehicleSeat, VehicleUIIndSeat, VehicleUIIndicator
- **杂项 (Misc)**: AnimationData, AttackAnimKits, Emotes, Holidays, Languages, LoadingScreens, Movie, ScreenEffect, Weather, ZoneMusic
- **GT 表**: GtBarberShopCostBase, GtChanceToMeleeCrit, GtChanceToSpellCrit, GtCombatRatings, GtRegenHPPerSpt, GtRegenMPPerSpt

### 完整结构列表

```dart
// 所有 245 个结构均可通过 `Definitions` 的静态 getter 访问。
// 完整列表见源文件：lib/src/definition/definition.dart
//
// 示例：
Definitions.achievement          // Achievement.dbc
Definitions.chrRaces            // ChrRaces.dbc
Definitions.item                // Item.dbc
Definitions.spell               // Spell.dbc
Definitions.map                 // Map.dbc
Definitions.taxiNodes           // TaxiNodes.dbc
Definitions.vehicle             // Vehicle.dbc
Definitions.gtcombatRatings     // gtCombatRatings.dbc
Definitions.animationData       // AnimationData.dbc
Definitions.attackAnimKits      // AttackAnimKits.dbc
```

## MPQ 归档支持

Warcrafty 可选地通过 StormLib FFI 提供 MPQ 归档读写支持。需要 `ffi` 包及系统上安装的 StormLib 原生库。

```dart
import 'package:warcrafty/warcrafty.dart';

// 打开现有归档（默认只读）
final mpq = MpqArchive.open('patch-zhCN.MPQ');

// 提取文件到内存
final dbcBytes = mpq.extract(r'DBFilesClient\ChrRaces.dbc');
final loader = DbcLoader.fromBytes(dbcBytes, Definitions.chrRaces.format);

// 直接提取到磁盘
mpq.extractTo(r'DBFilesClient\Item.dbc', '/tmp/Item.dbc');

// 枚举归档中所有文件
for (final file in mpq.files) {
  print(file);
}

mpq.close();

// 以读写模式打开
final rwMpq = MpqArchive.open('patch-zhCN.MPQ', readOnly: false);
rwMpq.removeFile(r'DBFilesClient\old.dbc');
rwMpq.compact(); // 回收已删除文件的空间
rwMpq.close();

// 创建新归档
final out = MpqArchive.create('custom.MPQ', maxFileCount: 32);
out.addFile(r'data\my.dbc', encodedBytes, compress: true);
out.close();
```

### MPQ 异常

```dart
try {
  final mpq = MpqArchive.open('missing.MPQ');
} on MpqOpenException catch (e) {
  print('无法打开归档: ${e.message}');
} on MpqFileNotFoundException catch (e) {
  print('归档中文件不存在: ${e.message}');
} on MpqReadException catch (e) {
  print('读取错误: ${e.message}');
}
```

## 高级用法

### 处理本地化字段

许多 DBC 文件具有多种语言的本地化字符串：

```dart
final loader = DbcLoader('ChrRaces.dbc', Definitions.chrRaces.format);

for (final record in loader.records) {
  // 访问不同的本地化字段（如果存在）
  final nameEnglish = record.getString(14); // 第一个本地化名称字段
  // ... 其他本地化字段
}
```

### 创建自定义结构

为自定义 DBC 文件创建自己的结构：

```dart
final customSchema = DbcSchema(
  name: 'CustomStruct',
  format: 'niiiiss',
  fields: [
    const Field(index: 0, name: 'ID', type: FieldType.id),
    const Field(index: 1, name: 'Field1', type: FieldType.int32),
    const Field(index: 2, name: 'Field2', type: FieldType.int32),
    const Field(index: 3, name: 'Field3', type: FieldType.int32),
    const Field(index: 4, name: 'Field4', type: FieldType.int32),
    const Field(index: 5, name: 'Name', type: FieldType.string),
    const Field(index: 6, name: 'Description', type: FieldType.string),
  ],
);

final loader = DbcLoader('custom.dbc', customSchema.format);
```

### 错误处理

库提供了全面的异常类型：

```dart
try {
  final loader = DbcLoader('file.dbc', 'niiiiss');
} on InvalidSignatureException catch (e) {
  print('无效的文件签名: ${e.message}');
} on DbcFormatException catch (e) {
  print('格式错误: ${e.message}');
} on RecordIndexOutOfRangeException catch (e) {
  print('记录索引错误: ${e.message}');
} on StringOffsetOutOfRangeException catch (e) {
  print('字符串偏移错误: ${e.message}');
} on FileReadException catch (e) {
  print('文件读取错误: ${e.message}');
} on WriteException catch (e) {
  print('写入错误: ${e.message}');
} on MpqOpenException catch (e) {
  print('MPQ 打开错误: ${e.message}');
} on MpqFileNotFoundException catch (e) {
  print('MPQ 文件未找到: ${e.message}');
}
```

### 本地化字段工具

用于生成预定义结构字段的辅助函数：

```dart
// 这些工具函数由定义生成器内部使用，也可用于自定义结构创建。

// 生成 16 种语言的字符串字段
List<Field> createLocaleFields(int startIndex, String baseName, String desc);

// 生成 16 种语言字段 + 1 个标志字段
List<Field> createLocaleFieldsWithFlag(
  int startIndex, String baseName, String desc,
  {String? flagName},
);

// 生成未使用/跳过字段
List<Field> createUnusedFields(
  int startIndex, int count,
  {String baseName = 'Unused', FieldType type = FieldType.unused},
);

// 生成连续整数型字段
List<Field> createIntFields(
  int startIndex, int count, String baseName, String desc,
);
```

## 兼容性

兼容以下服务器模拟器的 DBC 文件：
- **AzerothCore** (3.3.5a)
- **TrinityCore** (3.3.5a)
- **MaNGOS** (3.3.5a)
- **其他魔兽世界服务器模拟器**

AzerothCore 风格格式字符串通过 `DbcFormatDialect.azerothCore` 支持。默认 Warcrafty 方言是扩展类型方言；额外字符（`B`、`h`、`H`、`u`、`q`、`Q`）不能直接用于 AzerothCore `DBCfmt.h`。

## 测试

运行测试套件：

```bash
# 运行所有测试
dart test

# 运行测试并生成覆盖率报告
dart test --coverage=coverage

# 查看覆盖率报告
dart pub global activate coverage
dart pub global run coverage:format_coverage --lcov --in=coverage/coverage.json --out=coverage/lcov.info

# 运行特定测试文件
dart test test/dbc_integration_test.dart
```

## 运行时依赖

| 包名 | 用途 |
|------|------|
| `ffi` | StormLib 的 FFI 绑定（MPQ 支持）|
| `hooks` | 平台原生库解析 |

DBC 读写操作不依赖原生库。仅需 Dart 的 `ffi` 包。MPQ 支持需要系统上安装 StormLib 原生库。

## 性能

Warcrafty 针对性能进行了优化：

- **O(1) 字符串查找**: 预建字符串索引消除线性搜索
- **高效二进制解析**: 直接访问 `ByteData` 而无需中间副本
- **字符串去重**: 自动去重减少输出文件大小 20-40%
- **零拷贝读取**: 直接内存访问以实现最大吞吐量
- **最小化分配**: 重用缓冲区，避免不必要的对象创建

### 基准测试

典型性能特征：
- **读取**: 每 10,000 条记录约 1-2 毫秒（取决于记录大小）
- **写入**: 每 1,000 条记录约 5-10 毫秒（包括字符串去重）
- **内存**: 每 100,000 条记录约 1MB（取决于字符串数量）

## 许可证

MIT 许可证 - 详见 [LICENSE](LICENSE) 文件。

## 致谢

- [AzerothCore](https://www.azerothcore.org/) - DBC 格式参考和定义
- [WoWDBDefs](https://github.com/wowdev/WoWDBDefs) - 数据库结构定义
- World of Warcraft 社区 - DBC 文件格式文档
