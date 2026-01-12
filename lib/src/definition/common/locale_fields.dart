import 'package:warcrafty/src/core/field_format.dart';
import 'package:warcrafty/src/definition/base/field_definition.dart';

/// 多语言字段工具
///
/// 用于生成 WoW DBC 文件中常见的 16 种语言字段定义。
/// 参考 AzerothCore 的多语言字段设计模式。

/// 语言代码列表（与 WoW 客户端一致）
const List<String> localeNames = [
  'enUS', // 0 - 美式英语
  'koKR', // 1 - 韩语
  'frFR', // 2 - 法语
  'deDE', // 3 - 德语
  'zhCN', // 4 - 简体中文
  'zhTW', // 5 - 繁体中文
  'esES', // 6 - 西班牙语
  'esMX', // 7 - 墨西哥西班牙语
  'ruRU', // 8 - 俄语
  'jaJP', // 9 - 日语（部分版本）
  'ptPT', // 10 - 葡萄牙语
  'ptBR', // 11 - 巴西葡萄牙语
  'itIT', // 12 - 意大利语
  'unk1', // 13 - 未知
  'unk2', // 14 - 未知
  'unk3', // 15 - 未知
];

/// 语言描述列表
const List<String> localeDescriptions = [
  '美式英语',
  '韩语',
  '法语',
  '德语',
  '简体中文',
  '繁体中文',
  '西班牙语',
  '墨西哥西班牙语',
  '俄语',
  '日语',
  '葡萄牙语',
  '巴西葡萄牙语',
  '意大利语',
  '未知语言 1',
  '未知语言 2',
  '未知语言 3',
];

/// 生成 16 种语言的字符串字段定义
///
/// [startIndex] - 起始字段索引
/// [baseName] - 字段基础名称（如 'Name', 'Description'）
/// [description] - 字段描述前缀（如 '名称', '描述'）
///
/// 返回 16 个 FieldDefinition 的列表，每个对应一种语言。
///
/// 示例:
/// ```dart
/// final nameFields = createLocaleFields(4, 'Name', '名称');
/// // 生成:
/// // FieldDefinition(index: 4, name: 'Name_enUS', description: '名称 (美式英语)', ...)
/// // FieldDefinition(index: 5, name: 'Name_koKR', description: '名称 (韩语)', ...)
/// // ...
/// ```
List<FieldDefinition> createLocaleFields(
  int startIndex,
  String baseName,
  String description,
) {
  return [
    for (int i = 0; i < 16; i++)
      FieldDefinition(
        index: startIndex + i,
        name: '${baseName}_${localeNames[i]}',
        description: '$description (${localeDescriptions[i]})',
        format: DbcFieldFormat.string,
      ),
  ];
}

/// 生成 16 种语言字段 + 1 个字符串标志字段
///
/// 许多 DBC 文件中，16 个语言字段后面会跟一个整数字段作为字符串标志。
/// 此函数生成 17 个字段定义。
///
/// [startIndex] - 起始字段索引
/// [baseName] - 字段基础名称
/// [description] - 字段描述前缀
/// [flagName] - 标志字段名称（默认为 baseName + '_Flags'）
///
/// 示例:
/// ```dart
/// final nameWithFlag = createLocaleFieldsWithFlag(4, 'Name', '名称');
/// // 生成 16 个语言字段 + 1 个 Name_Flags 字段
/// ```
List<FieldDefinition> createLocaleFieldsWithFlag(
  int startIndex,
  String baseName,
  String description, {
  String? flagName,
}) {
  final fields = createLocaleFields(startIndex, baseName, description);
  fields.add(FieldDefinition(
    index: startIndex + 16,
    name: flagName ?? '${baseName}_Flags',
    description: '$description 标志',
    format: DbcFieldFormat.intType,
  ));
  return fields;
}

/// 生成未使用字段定义列表
///
/// [startIndex] - 起始字段索引
/// [count] - 未使用字段数量
/// [baseName] - 字段基础名称（默认为 'Unused'）
///
/// 示例:
/// ```dart
/// final unusedFields = createUnusedFields(20, 5);
/// // 生成: Unused20, Unused21, Unused22, Unused23, Unused24
/// ```
List<FieldDefinition> createUnusedFields(
  int startIndex,
  int count, {
  String baseName = 'Unused',
  DbcFieldFormat format = DbcFieldFormat.na,
}) {
  return [
    for (int i = 0; i < count; i++)
      FieldDefinition(
        index: startIndex + i,
        name: '$baseName${startIndex + i}',
        description: '未使用',
        format: format,
      ),
  ];
}

/// 生成连续整数字段定义列表（使用映射）
///
/// [startIndex] - 起始字段索引
/// [names] - 字段名称和描述的映射
///
/// 示例:
/// ```dart
/// final fields = createIntFieldsFromMap(0, {
///   'ID': '唯一标识符',
///   'Faction': '阵营',
///   'MapID': '地图 ID',
/// });
/// ```
List<FieldDefinition> createIntFieldsFromMap(
  int startIndex,
  Map<String, String> names,
) {
  final entries = names.entries.toList();
  return [
    for (int i = 0; i < entries.length; i++)
      FieldDefinition(
        index: startIndex + i,
        name: entries[i].key,
        description: entries[i].value,
        format: DbcFieldFormat.intType,
      ),
  ];
}

/// 生成连续带编号的整数字段定义列表
///
/// [startIndex] - 起始字段索引
/// [count] - 字段数量
/// [baseName] - 字段基础名称
/// [description] - 字段描述
///
/// 示例:
/// ```dart
/// final fields = createIntFields(52, 8, 'Reagent', '试剂物品 ID');
/// // 生成: Reagent0, Reagent1, ..., Reagent7
/// ```
List<FieldDefinition> createIntFields(
  int startIndex,
  int count,
  String baseName,
  String description,
) {
  return [
    for (int i = 0; i < count; i++)
      FieldDefinition(
        index: startIndex + i,
        name: '$baseName$i',
        description: '$description $i',
        format: DbcFieldFormat.intType,
      ),
  ];
}
