import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// SpellVisualKit 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const spellVisualKit = DbcStructureDefinition(
  name: 'SpellVisualKit',
  format: 'niiiiiiiiiiiiiiiiiiiiffffffffffffffffi',
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.indexField),
    FieldDefinition(index: 1, name: 'StartAnimID', description: 'StartAnimID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 2, name: 'AnimID', description: 'AnimID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 3, name: 'HeadEffect', description: 'HeadEffect', format: DbcFieldFormat.intType),
    FieldDefinition(index: 4, name: 'ChestEffect', description: 'ChestEffect', format: DbcFieldFormat.intType),
    FieldDefinition(index: 5, name: 'BaseEffect', description: 'BaseEffect', format: DbcFieldFormat.intType),
    FieldDefinition(index: 6, name: 'LeftHandEffect', description: 'LeftHandEffect', format: DbcFieldFormat.intType),
    FieldDefinition(index: 7, name: 'RightHandEffect', description: 'RightHandEffect', format: DbcFieldFormat.intType),
    FieldDefinition(index: 8, name: 'BreathEffect', description: 'BreathEffect', format: DbcFieldFormat.intType),
    FieldDefinition(index: 9, name: 'LeftWeaponEffect', description: 'LeftWeaponEffect', format: DbcFieldFormat.intType),
    FieldDefinition(index: 10, name: 'RightWeaponEffect', description: 'RightWeaponEffect', format: DbcFieldFormat.intType),
    FieldDefinition(index: 11, name: 'SpecialEffect0', description: 'SpecialEffect 0', format: DbcFieldFormat.intType),
    FieldDefinition(index: 12, name: 'SpecialEffect1', description: 'SpecialEffect 1', format: DbcFieldFormat.intType),
    FieldDefinition(index: 13, name: 'SpecialEffect2', description: 'SpecialEffect 2', format: DbcFieldFormat.intType),
    FieldDefinition(index: 14, name: 'WorldEffect', description: 'WorldEffect', format: DbcFieldFormat.intType),
    FieldDefinition(index: 15, name: 'SoundID', description: 'SoundID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 16, name: 'ShakeID', description: 'ShakeID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 17, name: 'CharProc0', description: 'CharProc 0', format: DbcFieldFormat.intType),
    FieldDefinition(index: 18, name: 'CharProc1', description: 'CharProc 1', format: DbcFieldFormat.intType),
    FieldDefinition(index: 19, name: 'CharProc2', description: 'CharProc 2', format: DbcFieldFormat.intType),
    FieldDefinition(index: 20, name: 'CharProc3', description: 'CharProc 3', format: DbcFieldFormat.intType),
    FieldDefinition(index: 21, name: 'CharParamZero0', description: 'CharParamZero 0', format: DbcFieldFormat.float),
    FieldDefinition(index: 22, name: 'CharParamZero1', description: 'CharParamZero 1', format: DbcFieldFormat.float),
    FieldDefinition(index: 23, name: 'CharParamZero2', description: 'CharParamZero 2', format: DbcFieldFormat.float),
    FieldDefinition(index: 24, name: 'CharParamZero3', description: 'CharParamZero 3', format: DbcFieldFormat.float),
    FieldDefinition(index: 25, name: 'CharParamOne0', description: 'CharParamOne 0', format: DbcFieldFormat.float),
    FieldDefinition(index: 26, name: 'CharParamOne1', description: 'CharParamOne 1', format: DbcFieldFormat.float),
    FieldDefinition(index: 27, name: 'CharParamOne2', description: 'CharParamOne 2', format: DbcFieldFormat.float),
    FieldDefinition(index: 28, name: 'CharParamOne3', description: 'CharParamOne 3', format: DbcFieldFormat.float),
    FieldDefinition(index: 29, name: 'CharParamTwo0', description: 'CharParamTwo 0', format: DbcFieldFormat.float),
    FieldDefinition(index: 30, name: 'CharParamTwo1', description: 'CharParamTwo 1', format: DbcFieldFormat.float),
    FieldDefinition(index: 31, name: 'CharParamTwo2', description: 'CharParamTwo 2', format: DbcFieldFormat.float),
    FieldDefinition(index: 32, name: 'CharParamTwo3', description: 'CharParamTwo 3', format: DbcFieldFormat.float),
    FieldDefinition(index: 33, name: 'CharParamThree0', description: 'CharParamThree 0', format: DbcFieldFormat.float),
    FieldDefinition(index: 34, name: 'CharParamThree1', description: 'CharParamThree 1', format: DbcFieldFormat.float),
    FieldDefinition(index: 35, name: 'CharParamThree2', description: 'CharParamThree 2', format: DbcFieldFormat.float),
    FieldDefinition(index: 36, name: 'CharParamThree3', description: 'CharParamThree 3', format: DbcFieldFormat.float),
    FieldDefinition(index: 37, name: 'Flags', description: 'Flags', format: DbcFieldFormat.intType),
  ],
);
