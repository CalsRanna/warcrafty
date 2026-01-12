/// BarberShopStyle.dbc - 理发店风格格式
library;

import '../base/field_definition.dart';
import '../base/structure_definition.dart';
import '../../core/field_format.dart';

/// BarberShopStyle 格式字符串
const String barberShopStyleFormat = 'nixxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxiii';

/// BarberShopStyle 结构定义
const DbcStructureDefinition barberShopStyle = DbcStructureDefinition(
  name: 'BarberShopStyle',
  format: barberShopStyleFormat,
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
