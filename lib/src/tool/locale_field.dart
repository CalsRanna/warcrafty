import '../schema/field.dart';

/// 语言代码列表
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
List<Field> createLocaleFields(int startIndex, String baseName, String desc) {
  return [
    for (int i = 0; i < 16; i++)
      Field(
        index: startIndex + i,
        name: '${baseName}_${localeNames[i]}',
        description: '$desc (${localeDescriptions[i]})',
        type: FieldType.string,
      ),
  ];
}

/// 生成 16 种语言字段 + 1 个标志字段
List<Field> createLocaleFieldsWithFlag(int startIndex, String baseName, String desc, {String? flagName}) {
  final fields = createLocaleFields(startIndex, baseName, desc);
  fields.add(Field(
    index: startIndex + 16,
    name: flagName ?? '${baseName}_Flags',
    description: '$desc 标志',
    type: FieldType.int32,
  ));
  return fields;
}

/// 生成未使用字段
List<Field> createUnusedFields(int startIndex, int count, {String baseName = 'Unused', FieldType type = FieldType.unused}) {
  return [
    for (int i = 0; i < count; i++)
      Field(index: startIndex + i, name: '$baseName${startIndex + i}', description: '未使用', type: type),
  ];
}

/// 生成连续整数字段
List<Field> createIntFields(int startIndex, int count, String baseName, String desc) {
  return [
    for (int i = 0; i < count; i++)
      Field(index: startIndex + i, name: '$baseName$i', description: '$desc $i', type: FieldType.int32),
  ];
}
