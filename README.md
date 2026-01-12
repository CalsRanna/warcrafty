# Warcrafty DBC 库

一个高性能的 Dart 库，用于读取和写入魔兽世界客户端使用的 DBC (Database Client) 文件。

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
  final loader = DbcLoader.loadFromPath('chr-races.dbc', 'niiiisssssssssssssssss');

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
| `n` | indexField | 4 字节 | 索引字段 (ID)，用于快速查找 |
| `i` | intType | 4 字节 | 32 位有符号整数 |
| `b` | byte | 1 字节 | 8 位无符号整数 |
| `f` | float | 4 字节 | 32 位浮点数 |
| `s` | string | 4 字节 | 字符串偏移量 (指向字符串块) |
| `x` | na | 4 字节 | 未知/跳过字段 |
| `X` | naByte | 1 字节 | 未知/跳过字节字段 |
| `d` | sort | 4 字节 | 排序字段 (不包含在数据中) |
| `l` | logic | 4 字节 | 布尔值/逻辑值 |

### 格式字符串示例

```
// chr-races.dbc (简化版)
'niiiisssssssssssssssss'  // 23 个字段：ID, 3 个整数, 字符串, 19 个字符串

// achievement.dbc (示例)
'niixssssssssssssssssxxxxxxxxxxxxxxxxxxiixixxxxxxxxxxxxxxxxxxii'

// spell.dbc (示例)
'niiiiiiiiiiiixixiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiifxiiiiiiiiiiiiiiiiiiiiiiiiiiiifffiiiiiiiiiiiiiiiiiiiiifffiiiiiiiiiiiiiiifffiiiiiiiiiiiiiissssssssssssssssxssssssssssssssssxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxiiiiiiiiiiixfffxxxiiiiixxfffxx'
```

## API 参考

### DbcLoader

用于读取 DBC 文件的主要类。

```dart
// 从文件路径加载
final loader = DbcLoader.loadFromPath('path/to/file.dbc', 'niiiiss');

// 或手动创建并加载
final loader = DbcLoader('path/to/file.dbc');
loader.load('niiiiss');

// 异步加载
await loader.loadAsync('niiiiss');

// 获取记录数量
print(loader.recordCount);  // 例如: 12

// 获取字段数量
print(loader.fieldCount);   // 例如: 23

// 获取格式字符串
print(loader.format);       // 例如: 'niiiisssssssssssssssss'

// 获取指定索引的记录
final record = loader.getRecord(0);

// 迭代所有记录
for (final record in loader.records) {
  // 处理记录
}

// 导出为 Map 列表
final mapList = loader.toMapList();

// 关闭文件
loader.close();
```

### DbcRecord

表示 DBC 文件中的单条记录。

```dart
final record = loader.getRecord(0);

// 读取有符号整数
final id = record.getInt(0);
final value = record.getInt(1);

// 读取无符号整数
final unsigned = record.getUint(0);

// 读取 8 位整数
final byte = record.getInt8(0);
final ubyte = record.getUint8(0);

// 读取浮点数
final float = record.getFloat(0);

// 读取字符串
final name = record.getString(5);

// 转换为 Map
final map = record.toMap();
```

### DbcWriter

用于写入 DBC 文件。

```dart
// 写入文件
DbcWriter.writeToPath('output.dbc', 'nii', [
  [1, 100, 200],
  [2, 300, 400],
]);

// 或创建 Writer 实例后写入
final writer = DbcWriter('output.dbc', 'nii');
writer.write([
  [1, 100, 200],
]);

// 异步写入
await DbcWriter.writeToPathAsync('output.dbc', 'nii', records);

// 从现有 loader 复制并修改
DbcWriter.copyWithModify(
  sourcePath: 'input.dbc',
  sourceFormat: 'niiiiss',
  outputPath: 'output.dbc',
  modify: (source) {
    // 修改记录并返回新值
    return [
      source.getInt(0),
      source.getInt(1) + 1,
      source.getInt(2),
      source.getInt(3),
      source.getInt(4),
      source.getString(5),
      source.getString(6),
    ];
  },
);
```

### DbcIndexBuilder

构建基于 ID 的索引以实现快速记录查找。

```dart
// 从 loader 构建索引
final indexBuilder = DbcIndexBuilder.fromLoader(loader, (record) {
  return {
    'ID': record.getInt(0),
    'Name': record.getString(5),
  };
});

// 或从 Map 列表构建索引
final indexBuilder = DbcIndexBuilder<Map<String, dynamic>>(records, 0);

// 通过 ID 查找
final record = indexBuilder.lookup(1);
if (record != null) {
  print(record['Name']);
}

// 检查 ID 是否存在
print(indexBuilder.contains(1));  // true/false

// 查找不存在时抛出异常
final record2 = indexBuilder.lookupOrThrow(99);

// 获取所有 ID
print(indexBuilder.allIds);  // [1, 2, 3, ...]

// 获取记录数量
print(indexBuilder.count);
```

### BinarySearch

二分搜索工具类。

```dart
final list = [1, 3, 5, 7, 9];

// 查找目标值
final result = BinarySearch.search(list, 5, (x) => x - 5);
print(result.found);    // true
print(result.index);    // 2

// 查找插入位置 (第一个 >= target)
print(BinarySearch.lowerBound(list, 4, (x) => x));  // 2

// 查找插入位置 (第一个 > target)
print(BinarySearch.upperBound(list, 5, (x) => x));  // 3
```

### FieldOffsetCalculator

计算记录中每个字段的字节偏移量。

```dart
final calculator = FieldOffsetCalculator('niiiiss');

// 获取指定字段的偏移量
print(calculator[0]);  // 0 (ID 字段)
print(calculator[1]);  // 4 (第一个整数)
print(calculator[2]);  // 8 (第二个整数)

// 获取总记录大小
print(calculator.recordSize);  // 28

// 获取字段数量
print(calculator.fieldCount);  // 6

// 查找索引字段位置
print(calculator.indexField);  // 0 ('n' 的位置)
```

### StringBlockHandler

处理 DBC 文件中的字符串块，支持 O(1) 查找。

```dart
// 从 loader 获取
final stringHandler = loader._stringHandler;  // 内部访问

// 读取字符串
final name = stringHandler.readString(123);

// 检查偏移量是否有效
print(stringHandler.isValidOffset(123));

// 获取字符串数量
print(stringHandler.count);

// 获取所有字符串
print(stringHandler.allStrings);
```

## 异常处理

库为不同错误类型提供了特定的异常类：

```dart
import 'package:warcrafty/warcrafty.dart';

try {
  final loader = DbcLoader.loadFromPath('invalid.dbc', 'niii');
} on InvalidSignatureException catch (e) {
  print('无效的文件签名: ${e.message}');
} on FormatException catch (e) {
  print('格式错误: ${e.message}');
} on RecordIndexOutOfRangeException catch (e) {
  print('无效的记录索引: ${e.message}');
} on FieldIndexOutOfRangeException catch (e) {
  print('无效的字段索引: ${e.message}');
} on FileReadException catch (e) {
  print('文件读取错误: ${e.message}');
}
```

## 高级用法

### 异步操作

```dart
// 异步加载
final loader = DbcLoader('large.dbc');
await loader.loadAsync('niiiiss');

// 异步写入
await DbcWriter.writeToPathAsync('output.dbc', 'nii', records);

// 异步关闭
await loader.closeAsync();
```

### 自定义记录解析

```dart
// 定义记录类
class Race {
  final int id;
  final int flags;
  final int factionId;
  final String name;

  Race(this.id, this.flags, this.factionId, this.name);
}

// 使用自定义解析
final races = loader.records.map((record) {
  return Race(
    record.getInt(0),
    record.getInt(1),
    record.getInt(2),
    record.getString(5),
  );
}).toList();

// 使用索引构建器
final indexBuilder = DbcIndexBuilder.fromLoader(loader, (record) {
  return Race(
    record.getInt(0),
    record.getInt(1),
    record.getInt(2),
    record.getString(5),
  );
});
```

### 导出为 JSON

```dart
import 'dart:convert';

final mapList = loader.toMapList();
final json = jsonEncode(mapList);
print(json);

// 带缩进的 JSON
final prettyJson = JsonEncoder.withIndent('  ').convert(mapList);
print(prettyJson);
```

### 实际示例：解析 chr-races.dbc

```dart
import 'package:warcrafty/warcrafty.dart';

class ChrRaces {
  final int id;
  final int flags;
  final int factionId;
  final int maleDisplayId;
  final int femaleDisplayId;
  final String prefix;
  final String name;

  ChrRaces(
    this.id,
    this.flags,
    this.factionId,
    this.maleDisplayId,
    this.femaleDisplayId,
    this.prefix,
    this.name,
  );
}

void main() {
  // chr-races.dbc 格式: ID, Flags, FactionID, MaleDisplayID, FemaleDisplayID, Prefix, 16 个名称字符串
  final format = 'niiiisssssssssssssssss';

  final loader = DbcLoader.loadFromPath('chr-races.dbc', format);
  final indexBuilder = DbcIndexBuilder.fromLoader(loader, (record) {
    return ChrRaces(
      record.getInt(0),
      record.getInt(1),
      record.getInt(2),
      record.getInt(3),
      record.getInt(4),
      record.getString(5),
      record.getString(6), // enUS 名称
    );
  });

  // 查找种族 1 (人类)
  final human = indexBuilder.lookup(1);
  if (human != null) {
    print('人类: ${human.name}');
  }

  // 遍历所有种族
  for (final race in indexBuilder.records) {
    print('${race.id}: ${race.name}');
  }

  loader.close();
}
```

## 预定义格式

库内置了 100+ 个常用 DBC 格式定义，可直接导入使用：

```dart
import 'package:warcrafty/warcrafty.dart';

// 使用预定义格式
final loader = DbcLoader.loadFromPath(
  'chr-races.dbc',
  DbcFormats.chrRaces,
);

// 或使用格式字符串常量
final format = DbcFormatStrings.chrRaces;
```

支持的格式类别：

- **角色相关**: chr-races, chr-classes, char-titles, talent, talent-tab
- **物品相关**: item, item-set, item-extended-cost, gem-properties
- **法术相关**: spell, spell-range, spell-duration, spell-radius
- **技能相关**: skill-line, skill-line-ability
- **GT 表**: gt-combat-ratings, gt-chance-to-spell-crit 等
- **其他**: achievement, faction, map, quest 等

## 性能优化建议

1. **频繁查找时使用 IndexBuilder**: 使用 `DbcIndexBuilder` 替代遍历，实现 O(1) 的基于 ID 的查找。

2. **复用 Loader**: 避免为同一文件创建多个 Loader，复用同一个实例。

3. **使用完毕后关闭文件**: 完成后务必调用 `close()` 或 `closeAsync()` 释放文件句柄。

4. **大型文件使用异步操作**: 对大型 DBC 文件使用 `loadAsync()` 避免阻塞。

5. **预建字符串索引**: 库自动构建字符串索引，实现 O(1) 的字符串查找。

## 项目架构

```
lib/
├── warcrafty.dart              # 主入口文件，统一导出所有 API
└── src/
    ├── core/                   # 核心加载/写入模块
    │   ├── dbc_loader.dart     # DBC 文件读取器
    │   ├── dbc_writer.dart     # DBC 文件写入器
    │   ├── field_format.dart   # 字段格式枚举定义
    │   └── header.dart         # DBC 文件头结构
    ├── handlers/               # 处理器模块
    │   ├── endian_converter.dart   # 字节序转换工具
    │   ├── exceptions.dart         # 异常类定义
    │   └── offset_calculator.dart  # 字段偏移量计算器
    ├── index/                  # 索引和搜索模块
    │   ├── binary_search.dart      # 二分搜索算法
    │   └── index_builder.dart      # ID 索引构建器
    ├── utils/                  # 工具模块
    │   └── string_handler.dart     # 字符串块处理器
    └── formats/                # DBC 格式定义
        ├── base/                   # 基础结构定义
        ├── achievement/            # 成就相关格式
        ├── character/              # 角色相关格式
        ├── creature/               # 生物相关格式
        ├── faction/                # 派系相关格式
        ├── gameobject/             # 游戏对象格式
        ├── item/                   # 物品相关格式
        ├── map/                    # 地图相关格式
        ├── quest/                  # 任务相关格式
        ├── skill/                  # 技能相关格式
        ├── spell/                  # 法术相关格式
        ├── vehicle/                # 载具相关格式
        ├── gt/                     # 游戏数据表
        └── other/                  # 其他格式
```

## 兼容性

此库兼容以下魔兽世界服务器模拟器使用的 DBC 文件：

- AzerothCore
- TrinityCore
- MaNGOS
- 其他魔兽世界服务器模拟器

格式字符串与 AzerothCore 的 DBC 格式定义完全兼容。

## 测试

运行测试套件：

```bash
dart test
```

测试覆盖范围：
- 字节序转换
- 字段格式解析
- 字段偏移量计算
- DBC 文件头解析
- 字符串块处理
- 字符串表构建
- 二分搜索操作
- 索引构建
- DBC 读写
- DbcRecord 字段访问
- DbcLoader 操作

## 贡献

欢迎贡献代码！请随时提交 Pull Request。

## 许可证

本项目基于 MIT 许可证 - 详见 [LICENSE](LICENSE) 文件。

## 致谢

- [AzerothCore](https://www.azerothcore.org/) - DBC 格式参考实现
- [warcrafty_js](https://github.com/CalsRanna/warcrafty_js) - 初始灵感来源
