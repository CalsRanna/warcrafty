import 'package:warcrafty/src/core/field_format.dart';
import 'package:warcrafty/src/core/field_definition.dart';

/// 多语言字段工具
///
/// 用于生成 WoW DBC 文件中常见的 16 种语言字段定义。

/// 语言代码列表（与 WoW 客户端一致）
const List<String> localeNames = [
  'enUS', 'koKR', 'frFR', 'deDE', 'zhCN', 'zhTW', 'esES', 'esMX',
  'ruRU', 'jaJP', 'ptPT', 'ptBR', 'itIT', 'unk1', 'unk2', 'unk3',
];

/// 语言描述列表
const List<String> localeDescriptions = [
  '美式英语', '韩语', '法语', '德语', '简体中文', '繁体中文', '西班牙语', '墨西哥西班牙语',
  '俄语', '日语', '葡萄牙语', '巴西葡萄牙语', '意大利语', '未知语言 1', '未知语言 2', '未知语言 3',
];

/// 生成 16 种语言的字符串字段定义
List<FieldDefinition> createLocaleFields(int startIndex, String baseName, String description) {
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
List<FieldDefinition> createLocaleFieldsWithFlag(int startIndex, String baseName, String description, {String? flagName}) {
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
List<FieldDefinition> createUnusedFields(int startIndex, int count, {String baseName = 'Unused', DbcFieldFormat format = DbcFieldFormat.na}) {
  return [
    for (int i = 0; i < count; i++)
      FieldDefinition(index: startIndex + i, name: '$baseName${startIndex + i}', description: '未使用', format: format),
  ];
}

/// 生成连续带编号的整数字段定义列表
List<FieldDefinition> createIntFields(int startIndex, int count, String baseName, String description) {
  return [
    for (int i = 0; i < count; i++)
      FieldDefinition(index: startIndex + i, name: '$baseName$i', description: '$description $i', format: DbcFieldFormat.intType),
  ];
}
