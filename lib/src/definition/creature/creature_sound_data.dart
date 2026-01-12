import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// CreatureSoundData 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const creatureSoundData = DbcStructureDefinition(
  name: 'CreatureSoundData',
  format: 'niiiiiiiiiiiiiiiiiiiiiiiiiiiiiiffiiiii',
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.indexField),
    FieldDefinition(index: 1, name: 'SoundExertionID', description: 'SoundExertionID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 2, name: 'SoundExertionCriticalID', description: 'SoundExertionCriticalID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 3, name: 'SoundInjuryID', description: 'SoundInjuryID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 4, name: 'SoundInjuryCriticalID', description: 'SoundInjuryCriticalID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 5, name: 'SoundInjuryCrushingBlowID', description: 'SoundInjuryCrushingBlowID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 6, name: 'SoundDeathID', description: 'SoundDeathID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 7, name: 'SoundStunID', description: 'SoundStunID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 8, name: 'SoundStandID', description: 'SoundStandID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 9, name: 'SoundFootstepID', description: 'SoundFootstepID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 10, name: 'SoundAggroID', description: 'SoundAggroID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 11, name: 'SoundWingFlapID', description: 'SoundWingFlapID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 12, name: 'SoundWingGlideID', description: 'SoundWingGlideID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 13, name: 'SoundAlertID', description: 'SoundAlertID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 14, name: 'SoundFidget0', description: 'SoundFidget 0', format: DbcFieldFormat.intType),
    FieldDefinition(index: 15, name: 'SoundFidget1', description: 'SoundFidget 1', format: DbcFieldFormat.intType),
    FieldDefinition(index: 16, name: 'SoundFidget2', description: 'SoundFidget 2', format: DbcFieldFormat.intType),
    FieldDefinition(index: 17, name: 'SoundFidget3', description: 'SoundFidget 3', format: DbcFieldFormat.intType),
    FieldDefinition(index: 18, name: 'SoundFidget4', description: 'SoundFidget 4', format: DbcFieldFormat.intType),
    FieldDefinition(index: 19, name: 'CustomAttack0', description: 'CustomAttack 0', format: DbcFieldFormat.intType),
    FieldDefinition(index: 20, name: 'CustomAttack1', description: 'CustomAttack 1', format: DbcFieldFormat.intType),
    FieldDefinition(index: 21, name: 'CustomAttack2', description: 'CustomAttack 2', format: DbcFieldFormat.intType),
    FieldDefinition(index: 22, name: 'CustomAttack3', description: 'CustomAttack 3', format: DbcFieldFormat.intType),
    FieldDefinition(index: 23, name: 'NPCSoundID', description: 'NPCSoundID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 24, name: 'LoopSoundID', description: 'LoopSoundID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 25, name: 'CreatureImpactType', description: 'CreatureImpactType', format: DbcFieldFormat.intType),
    FieldDefinition(index: 26, name: 'SoundJumpStartID', description: 'SoundJumpStartID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 27, name: 'SoundJumpEndID', description: 'SoundJumpEndID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 28, name: 'SoundPetAttackID', description: 'SoundPetAttackID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 29, name: 'SoundPetOrderID', description: 'SoundPetOrderID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 30, name: 'SoundPetDismissID', description: 'SoundPetDismissID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 31, name: 'FidgetDelaySecondsMin', description: 'FidgetDelaySecondsMin', format: DbcFieldFormat.float),
    FieldDefinition(index: 32, name: 'FidgetDelaySecondsMax', description: 'FidgetDelaySecondsMax', format: DbcFieldFormat.float),
    FieldDefinition(index: 33, name: 'BirthSoundID', description: 'BirthSoundID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 34, name: 'SpellCastDirectedSoundID', description: 'SpellCastDirectedSoundID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 35, name: 'SubmergeSoundID', description: 'SubmergeSoundID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 36, name: 'SubmergedSoundID', description: 'SubmergedSoundID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 37, name: 'CreatureSoundDataIDPet', description: 'CreatureSoundDataIDPet', format: DbcFieldFormat.intType),
  ],
);
