/// LiquidType.dbc - 液体类型格式
library;

import '../base/field_definition.dart';
import '../base/structure_definition.dart';
import '../../core/field_format.dart';

/// LiquidType 格式字符串
const String liquidTypeFormat = 'nxxixixxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx';

/// LiquidType 结构定义
const DbcStructureDefinition liquidType = DbcStructureDefinition(
  name: 'LiquidType',
  format: liquidTypeFormat,
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 1, name: 'Name', description: '名称', format: DbcFieldFormat.na),
    FieldDefinition(index: 2, name: 'Flags', description: '标志', format: DbcFieldFormat.naByte),
    FieldDefinition(index: 3, name: 'Type', description: '类型', format: DbcFieldFormat.intType),
    FieldDefinition(index: 4, name: 'SpellID', description: '法术 ID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 5, name: 'Unknown1', description: '未知1', format: DbcFieldFormat.intType),
  ],
);
