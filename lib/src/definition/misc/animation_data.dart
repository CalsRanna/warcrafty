import 'package:warcrafty/src/core/field_definition.dart';
import 'package:warcrafty/src/core/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// AnimationData 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const animationData = DbcStructureDefinition(
  name: 'AnimationData',
  format: 'nsiiiiii',
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.indexField),
    FieldDefinition(index: 1, name: 'Name', description: 'Name', format: DbcFieldFormat.string),
    FieldDefinition(index: 2, name: 'Weaponflags', description: 'Weaponflags', format: DbcFieldFormat.intType),
    FieldDefinition(index: 3, name: 'Bodyflags', description: 'Bodyflags', format: DbcFieldFormat.intType),
    FieldDefinition(index: 4, name: 'Flags', description: 'Flags', format: DbcFieldFormat.intType),
    FieldDefinition(index: 5, name: 'Fallback', description: 'Fallback', format: DbcFieldFormat.intType),
    FieldDefinition(index: 6, name: 'BehaviorID', description: 'BehaviorID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 7, name: 'BehaviorTier', description: 'BehaviorTier', format: DbcFieldFormat.intType),
  ],
);
