import 'package:warcrafty/src/core/field_definition.dart';
import 'package:warcrafty/src/core/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// PaperDollItemFrame 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const paperDollItemFrame = DbcStructureDefinition(
  name: 'PaperDollItemFrame',
  format: 'ssi',
  fields: [
    FieldDefinition(index: 0, name: 'ItemButtonName', description: 'ItemButtonName', format: DbcFieldFormat.string),
    FieldDefinition(index: 1, name: 'SlotIcon', description: 'SlotIcon', format: DbcFieldFormat.string),
    FieldDefinition(index: 2, name: 'SlotNumber', description: 'SlotNumber', format: DbcFieldFormat.intType),
  ],
);
