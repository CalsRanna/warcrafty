import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// BarberShopStyle 格式字符串

/// BarberShopStyle 结构定义
const barberShopStyle = DbcStructureDefinition(
  name: 'BarberShopStyle',
  format: 'nixxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxiii',
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: '风格 ID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 1, name: 'DisplayName', description: '显示名称', format: DbcFieldFormat.string),
    FieldDefinition(index: 2, name: 'Description', description: '描述', format: DbcFieldFormat.string),
    FieldDefinition(index: 3, name: 'Type', description: '类型', format: DbcFieldFormat.intType),
    FieldDefinition(index: 4, name: 'CostMultiplier', description: '花费乘数', format: DbcFieldFormat.intType),
    FieldDefinition(index: 5, name: 'Race', description: '种族', format: DbcFieldFormat.intType),
    FieldDefinition(index: 6, name: 'Gender', description: '性别', format: DbcFieldFormat.intType),
    FieldDefinition(index: 7, name: 'HairID', description: '发型 ID', format: DbcFieldFormat.intType),
  ],
);
