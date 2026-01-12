/// Item.dbc - 物品格式
library;

import '../base/field_definition.dart';
import '../base/structure_definition.dart';
import '../../core/field_format.dart';

/// Item 格式字符串
const String itemFormat = 'niiiiiii';

/// Item 结构定义
const DbcStructureDefinition item = DbcStructureDefinition(
  name: 'Item',
  format: itemFormat,
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: '物品 ID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 1, name: 'ClassID', description: '物品类别 ID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 2, name: 'SubclassID', description: '物品子类别 ID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 3, name: 'SoundOverrideSubclassID', description: '声音覆盖子类别 ID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 4, name: 'Material', description: '材质', format: DbcFieldFormat.intType),
    FieldDefinition(index: 5, name: 'DisplayInfoID', description: '显示信息 ID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 6, name: 'InventoryType', description: '背包类型', format: DbcFieldFormat.intType),
    FieldDefinition(index: 7, name: 'SheatheType', description: ' sheath 类型', format: DbcFieldFormat.intType),
  ],
);
