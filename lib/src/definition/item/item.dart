import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// Item 格式字符串

/// Item 结构定义
const item = DbcStructureDefinition(
  name: 'Item',
  format: 'niiiiiii',
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
