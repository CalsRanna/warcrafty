import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// NamesProfanity 格式字符串

/// NamesProfanity 结构定义
const namesProfanity = DbcStructureDefinition(
  name: 'NamesProfanity',
  format: 'xsx',
  fields: [
    FieldDefinition(index: 0, name: 'Unknown1', description: '未知1', format: DbcFieldFormat.na),
    FieldDefinition(index: 1, name: 'Name', description: '名称', format: DbcFieldFormat.string),
  ],
);
