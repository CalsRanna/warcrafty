/// NamesProfanity.dbc - 敏感名称格式
library;

import '../base/field_definition.dart';
import '../base/structure_definition.dart';
import '../../core/field_format.dart';

/// NamesProfanity 格式字符串
const String namesProfanityFormat = 'xsx';

/// NamesProfanity 结构定义
const DbcStructureDefinition namesProfanity = DbcStructureDefinition(
  name: 'NamesProfanity',
  format: namesProfanityFormat,
  fields: [
    FieldDefinition(index: 0, name: 'Unknown1', description: '未知1', format: DbcFieldFormat.na),
    FieldDefinition(index: 1, name: 'Name', description: '名称', format: DbcFieldFormat.string),
  ],
);
