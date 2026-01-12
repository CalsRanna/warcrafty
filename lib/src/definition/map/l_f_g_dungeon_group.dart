import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';
import 'package:warcrafty/src/definition/common/locale_fields.dart';

/// LFGDungeonGroup 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
final lFGDungeonGroup = DbcStructureDefinition(
  name: 'LFGDungeonGroup',
  format: 'nsssssssssssssssssiii',
  fields: [
    const FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.indexField),
    ...createLocaleFieldsWithFlag(1, 'Name_lang', 'Name_lang'),
    const FieldDefinition(index: 18, name: 'Order_index', description: 'Order_index', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 19, name: 'Parent_group_ID', description: 'Parent_group_ID', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 20, name: 'TypeID', description: 'TypeID', format: DbcFieldFormat.intType),
  ],
);
