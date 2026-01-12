/// ItemBagFamily.dbc - 物品包家族格式
library;

import '../base/field_definition.dart';
import '../base/structure_definition.dart';
import '../../core/field_format.dart';

/// ItemBagFamily 格式字符串
const String itemBagFamilyFormat = 'nxxxxxxxxxxxxxxxxx';

/// ItemBagFamily 结构定义
const DbcStructureDefinition itemBagFamily = DbcStructureDefinition(
  name: 'ItemBagFamily',
  format: itemBagFamilyFormat,
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 1, name: 'Name', description: '名称', format: DbcFieldFormat.na),
  ],
);
