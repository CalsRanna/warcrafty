# Warcrafty

[![Pub Version](https://img.shields.io/pub/v/warcrafty)](https://pub.dev/packages/warcrafty)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT)
[![Dart SDK](https://img.shields.io/badge/Dart-3.10%2B-blue.svg)](https://dart.dev)

一个高性能的 **纯 Dart** 库，用于读写魔兽世界客户端使用的 DBC (Database Client) 二进制文件格式。无需外部运行时依赖。

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
- [高级用法](#高级用法)
- [兼容性](#兼容性)
- [测试](#测试)
- [性能](#性能)
- [许可证](#许可证)
- [致谢](#致谢)

## 功能特性

- **纯 Dart 实现**: 无需外部 C 库或 FFI
- **高性能**: 使用 `ByteData` 和 `Uint8List` 进行高效的二进制数据处理
- **格式字符串驱动**: 灵活的解析方式，与 AzerothCore 格式字符串完全兼容
- **O(1) 字符串查找**: 预建字符串索引，常数时间复杂度访问
- **基于 ID 的索引**: 使用二分搜索快速查找记录
- **完整读写支持**: 提供 DBC 文件的完整读取和写入功能
- **字符串去重**: 写入时自动进行字符串去重以减少文件大小
- **同步与异步**: 同时支持同步和异步 API
- **类型安全**: 完整的 Dart 类型安全，丰富的异常处理
- **200+ 预定义结构**: 内置所有主要 DBC 文件的格式定义
- **结构验证**: 运行时验证格式字符串和字段类型

## 安装

在 `pubspec.yaml` 中添加依赖：

```yaml
dependencies:
  warcrafty: ^1.0.1
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

  // 构建索引以实现快速查找
  final index = DbcIndex.fromLoader(loader, (record) => record.toMap());
  final raceData = index.lookup(1); // 获取 ID 为 1 的种族

  // 写入 DBC 文件
  DbcWriter.writeToPath('output.dbc', 'niiiiss', [
    [1, 0, 84, 0, 0, 'Human', 'Human'],
  ]);
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

// 读取 8 位整数
final byteValue = record.getUint8(0);

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
  sourcePath: 'input.dbc',
  format: 'niiiiss',
  outputPath: 'output.dbc',
  modify: (source) => [
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

// 获取所有记录
final allRecords = index.records;
```

## 格式字符串参考

格式字符串定义 DBC 记录的结构。每个字符代表一种字段类型：

| 字符 | 类型 | 大小 | 描述 |
|------|------|------|------|
| `n` | ID 字段 | 4 字节 | 索引字段（ID）用于快速查找 - 32 位有符号整数 |
| `i` | Int32 | 4 字节 | 32 位有符号整数 |
| `b` | Uint8 | 1 字节 | 8 位无符号整数（0-255） |
| `f` | 浮点数 | 4 字节 | 32 位浮点数 |
| `s` | 字符串 | 4 字节 | 字符串偏移量（指向字符串块）|
| `x` | 未使用 | 4 字节 | 未知/跳过字段（32 位）|
| `X` | 未使用字节 | 1 字节 | 未知/跳过字段（8 位）|
| `d` | 排序 | 4 字节 | 排序字段（不包含在数据中）|
| `l` | 布尔值 | 4 字节 | 布尔值/逻辑值（存储为 32 位整数）|

### 格式字符串示例

```dart
// 简单记录：ID + 2 个整数 + 2 个字符串
'niiiiss'

// 种族角色：ID + 标志 + 阵营 + 2 个显示 ID + 2 个字符串 + 45 个本地化字符串
'niiiiisiiiisiissssssssssssssssssssssssssssssssssssssssssssssssssssssi'

// 物品：ID + 类别 + 子类 + 不同名称 + 名称
'niiiiss'
```

## 预定义结构

库内置了 **200+ 个预定义格式定义**，覆盖所有主要 DBC 文件：

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
- **区域 (Area)**: AreaTable, AreaGroup, AreaPOI, WorldMapArea, WorldSafeLocs
- **角色 (Character)**: ChrRaces, ChrClasses, CharBaseInfo, CharTitles, CharSections
- **生物 (Creature)**: CreatureDisplayInfo, CreatureFamily, CreatureModelData, CreatureSpellData
- **阵营 (Faction)**: Faction, FactionGroup, FactionTemplate
- **游戏对象 (GameObject)**: GameObjectDisplayInfo, GameObjectArtKit
- **物品 (Item)**: Item, ItemSet, ItemExtendedCost, ItemDisplayInfo, GemProperties
- **地图 (Map)**: Map, DungeonEncounter, DungeonMap, MapDifficulty
- **任务 (Quest)**: QuestInfo, QuestSort, QuestXP
- **技能 (Skill)**: SkillLine, SkillLineAbility, SkillTiers
- **音效 (Sound)**: SoundEntries, SoundAmbience, SoundEmitters
- **法术 (Spell)**: Spell, SpellRange, SpellDuration, SpellRadius, SpellIcon
- **天赋 (Talent)**: Talent, TalentTab
- **出租车 (Taxi)**: TaxiNodes, TaxiPath, TaxiPathNode
- **载具 (Vehicle)**: Vehicle, VehicleSeat
- **GT 表**: GtCombatRatings, GtChanceToSpellCrit, GtRegenHPPerSpt

### 完整结构列表

```dart
// 所有可用结构
Definitions.achievement
Definitions.achievementCategory
Definitions.achievementCriteria
Definitions.areaGroup
Definitions.areaPOI
Definitions.areaTable
Definitions.areaTrigger
Definitions.auctionHouse
Definitions.bankBagSlotPrices
Definitions.bannedAddOns
Definitions.barberShopStyle
Definitions.battlemasterList
Definitions.cameraShakes
Definitions.cfgCategories
Definitions.cfgConfigs
Definitions.charBaseInfo
Definitions.charHairGeosets
Definitions.charHairTextures
Definitions.charSections
Definitions.charStartOutfit
Definitions.charTitles
Definitions.characterFacialHairStyles
Definitions.chatChannels
Definitions.chatProfanity
Definitions.chrClasses
Definitions.chrRaces
Definitions.cinematicCamera
Definitions.cinematicSequences
Definitions.creatureDisplayInfo
Definitions.creatureDisplayInfoExtra
Definitions.creatureFamily
Definitions.creatureModelData
Definitions.creatureMovementInfo
Definitions.creatureSoundData
Definitions.creatureSpellData
Definitions.creatureType
Definitions.currencyCategory
Definitions.currencyTypes
Definitions.danceMoves
Definitions.deathThudLookups
Definitions.declinedWord
Definitions.declinedWordCases
Definitions.destructibleModelData
Definitions.dungeonEncounter
Definitions.dungeonMap
Definitions.dungeonMapChunk
Definitions.durabilityCosts
Definitions.durabilityQuality
Definitions.emotes
Definitions.emotesText
Definitions.emotesTextData
Definitions.emotesTextSound
Definitions.environmentalDamage
Definitions.exhaustion
Definitions.faction
Definitions.factionGroup
Definitions.factionTemplate
Definitions.fileData
Definitions.footprintTextures
Definitions.footstepTerrainLookup
Definitions.gMSurveyAnswers
Definitions.gMSurveyCurrentSurvey
Definitions.gMSurveyQuestions
Definitions.gMSurveySurveys
Definitions.gMTicketCategory
Definitions.gameObjectArtKit
Definitions.gameObjectDisplayInfo
Definitions.gameTables
Definitions.gameTips
Definitions.gemProperties
Definitions.glyphProperties
Definitions.glyphSlot
Definitions.groundEffectDoodad
Definitions.groundEffectTexture
Definitions.helmetGeosetVisData
Definitions.holidayDescriptions
Definitions.holidayNames
Definitions.holidays
Definitions.item
Definitions.itemBagFamily
Definitions.itemClass
Definitions.itemCondExtCosts
Definitions.itemDisplayInfo
Definitions.itemExtendedCost
Definitions.itemGroupSounds
Definitions.itemLimitCategory
Definitions.itemPetFood
Definitions.itemPurchaseGroup
Definitions.itemRandomProperties
Definitions.itemRandomSuffix
Definitions.itemSet
Definitions.itemSubClass
Definitions.itemSubClassMask
Definitions.itemVisualEffects
Definitions.itemVisuals
Definitions.lFGDungeonExpansion
Definitions.lFGDungeonGroup
Definitions.lFGDungeons
Definitions.languageWords
Definitions.languages
Definitions.light
Definitions.lightFloatBand
Definitions.lightIntBand
Definitions.lightParams
Definitions.lightSkybox
Definitions.liquidMaterial
Definitions.liquidType
Definitions.loadingScreenTaxiSplines
Definitions.loadingScreens
Definitions.lock
Definitions.lockType
Definitions.mailTemplate
Definitions.map
Definitions.mapDifficulty
Definitions.material
Definitions.movie
Definitions.movieFileData
Definitions.movieVariation
Definitions.nPCSounds
Definitions.nameGen
Definitions.namesProfanity
Definitions.namesReserved
Definitions.objectEffect
Definitions.objectEffectGroup
Definitions.objectEffectModifier
Definitions.objectEffectPackage
Definitions.objectEffectPackageElem
Definitions.overrideSpellData
Definitions.package
Definitions.pageTextMaterial
Definitions.paperDollItemFrame
Definitions.particleColor
Definitions.petPersonality
Definitions.petitionType
Definitions.powerDisplay
Definitions.pvpDifficulty
Definitions.questFactionReward
Definitions.questInfo
Definitions.questSort
Definitions.questXP
Definitions.randPropPoints
Definitions.resistances
Definitions.scalingStatDistribution
Definitions.scalingStatValues
Definitions.screenEffect
Definitions.serverMessages
Definitions.sheatheSoundLookups
Definitions.skillCostsData
Definitions.skillLine
Definitions.skillLineAbility
Definitions.skillLineCategory
Definitions.skillRaceClassInfo
Definitions.skillTiers
Definitions.soundAmbience
Definitions.soundEmitters
Definitions.soundEntries
Definitions.soundEntriesAdvanced
Definitions.soundFilter
Definitions.soundFilterElem
Definitions.soundProviderPreferences
Definitions.soundSamplePreferences
Definitions.soundWaterType
Definitions.spamMessages
Definitions.spell
Definitions.spellCastTimes
Definitions.spellCategory
Definitions.spellChainEffects
Definitions.spellDescriptionVariables
Definitions.spellDifficulty
Definitions.spellDispelType
Definitions.spellDuration
Definitions.spellEffectCameraShakes
Definitions.spellFocusObject
Definitions.spellIcon
Definitions.spellItemEnchantment
Definitions.spellItemEnchantmentCondition
Definitions.spellMechanic
Definitions.spellMissile
Definitions.spellMissileMotion
Definitions.spellRadius
Definitions.spellRange
Definitions.spellRuneCost
Definitions.spellShapeshiftForm
Definitions.spellVisual
Definitions.spellVisualEffectName
Definitions.spellVisualKit
Definitions.spellVisualKitAreaModel
Definitions.spellVisualKitModelAttach
Definitions.spellVisualPrecastTransitions
Definitions.stableSlotPrices
Definitions.startupStrings
Definitions.stationery
Definitions.stringLookups
Definitions.summonProperties
Definitions.talent
Definitions.talentTab
Definitions.taxiNodes
Definitions.taxiPath
Definitions.taxiPathNode
Definitions.teamContributionPoints
Definitions.terrainType
Definitions.terrainTypeSounds
Definitions.totemCategory
Definitions.transportAnimation
Definitions.transportPhysics
Definitions.transportRotation
Definitions.uISoundLookups
Definitions.unitBlood
Definitions.unitBloodLevels
Definitions.vehicle
Definitions.vehicleSeat
Definitions.vehicleUIIndSeat
Definitions.vehicleUIIndicator
Definitions.videoHardware
Definitions.vocalUISounds
Definitions.wMOAreaTable
Definitions.weaponImpactSounds
Definitions.weaponSwingSounds2
Definitions.weather
Definitions.worldChunkSounds
Definitions.worldMapArea
Definitions.worldMapContinent
Definitions.worldMapOverlay
Definitions.worldMapTransforms
Definitions.worldSafeLocs
Definitions.worldStateUI
Definitions.worldStateZoneSounds
Definitions.wowErrorStrings
Definitions.zoneIntroMusicTable
Definitions.zoneMusic
// GT（游戏表）定义
Definitions.gtbarberShopCostBase
Definitions.gtchanceToMeleeCrit
Definitions.gtchanceToMeleeCritBase
Definitions.gtchanceToSpellCrit
Definitions.gtchanceToSpellCritBase
Definitions.gtcombatRatings
Definitions.gtnPCManaCostScaler
Definitions.gtoCTClassCombatRatingScalar
Definitions.gtoCTRegenHP
Definitions.gtoCTRegenMP
Definitions.gtregenHPPerSpt
Definitions.gtregenMPPerSpt
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
}
```

## 兼容性

兼容以下服务器模拟器的 DBC 文件：
- **AzerothCore** (3.3.5a)
- **TrinityCore** (3.3.5a)
- **MaNGOS** (3.3.5a)
- **其他魔兽世界服务器模拟器**

格式字符串与 AzerothCore 的 DBC 格式定义完全兼容。

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
