import 'package:warcrafty/src/core/field_definition.dart';
import 'package:warcrafty/src/core/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// AttackAnimTypes 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const attackAnimTypes = DbcStructureDefinition(
  name: 'AttackAnimTypes',
  format: 'is',
  fields: [
    FieldDefinition(index: 0, name: 'AnimID', description: 'AnimID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 1, name: 'AnimName', description: 'AnimName', format: DbcFieldFormat.string),
  ],
);
