import 'package:warcrafty/src/core/field_definition.dart';
import 'package:warcrafty/src/core/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// SpellVisual 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const spellVisual = DbcStructureDefinition(
  name: 'SpellVisual',
  format: 'niiiiiiiiiiiiiiiiiiiiiiiiiffffff',
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.indexField),
    FieldDefinition(index: 1, name: 'PrecastKit', description: 'PrecastKit', format: DbcFieldFormat.intType),
    FieldDefinition(index: 2, name: 'CastKit', description: 'CastKit', format: DbcFieldFormat.intType),
    FieldDefinition(index: 3, name: 'ImpactKit', description: 'ImpactKit', format: DbcFieldFormat.intType),
    FieldDefinition(index: 4, name: 'StateKit', description: 'StateKit', format: DbcFieldFormat.intType),
    FieldDefinition(index: 5, name: 'StateDoneKit', description: 'StateDoneKit', format: DbcFieldFormat.intType),
    FieldDefinition(index: 6, name: 'ChannelKit', description: 'ChannelKit', format: DbcFieldFormat.intType),
    FieldDefinition(index: 7, name: 'HasMissile', description: 'HasMissile', format: DbcFieldFormat.intType),
    FieldDefinition(index: 8, name: 'MissileModel', description: 'MissileModel', format: DbcFieldFormat.intType),
    FieldDefinition(index: 9, name: 'MissilePathType', description: 'MissilePathType', format: DbcFieldFormat.intType),
    FieldDefinition(index: 10, name: 'MissileDestinationAttachment', description: 'MissileDestinationAttachment', format: DbcFieldFormat.intType),
    FieldDefinition(index: 11, name: 'MissileSound', description: 'MissileSound', format: DbcFieldFormat.intType),
    FieldDefinition(index: 12, name: 'AnimEventSoundID', description: 'AnimEventSoundID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 13, name: 'Flags', description: 'Flags', format: DbcFieldFormat.intType),
    FieldDefinition(index: 14, name: 'CasterImpactKit', description: 'CasterImpactKit', format: DbcFieldFormat.intType),
    FieldDefinition(index: 15, name: 'TargetImpactKit', description: 'TargetImpactKit', format: DbcFieldFormat.intType),
    FieldDefinition(index: 16, name: 'MissileAttachment', description: 'MissileAttachment', format: DbcFieldFormat.intType),
    FieldDefinition(index: 17, name: 'MissileFollowGroundHeight', description: 'MissileFollowGroundHeight', format: DbcFieldFormat.intType),
    FieldDefinition(index: 18, name: 'MissileFollowGroundDropSpeed', description: 'MissileFollowGroundDropSpeed', format: DbcFieldFormat.intType),
    FieldDefinition(index: 19, name: 'MissileFollowGroundApproach', description: 'MissileFollowGroundApproach', format: DbcFieldFormat.intType),
    FieldDefinition(index: 20, name: 'MissileFollowGroundFlags', description: 'MissileFollowGroundFlags', format: DbcFieldFormat.intType),
    FieldDefinition(index: 21, name: 'MissileMotion', description: 'MissileMotion', format: DbcFieldFormat.intType),
    FieldDefinition(index: 22, name: 'MissileTargetingKit', description: 'MissileTargetingKit', format: DbcFieldFormat.intType),
    FieldDefinition(index: 23, name: 'InstantAreaKit', description: 'InstantAreaKit', format: DbcFieldFormat.intType),
    FieldDefinition(index: 24, name: 'ImpactAreaKit', description: 'ImpactAreaKit', format: DbcFieldFormat.intType),
    FieldDefinition(index: 25, name: 'PersistentAreaKit', description: 'PersistentAreaKit', format: DbcFieldFormat.intType),
    FieldDefinition(index: 26, name: 'MissileCastOffset0', description: 'MissileCastOffset 0', format: DbcFieldFormat.float),
    FieldDefinition(index: 27, name: 'MissileCastOffset1', description: 'MissileCastOffset 1', format: DbcFieldFormat.float),
    FieldDefinition(index: 28, name: 'MissileCastOffset2', description: 'MissileCastOffset 2', format: DbcFieldFormat.float),
    FieldDefinition(index: 29, name: 'MissileImpactOffset0', description: 'MissileImpactOffset 0', format: DbcFieldFormat.float),
    FieldDefinition(index: 30, name: 'MissileImpactOffset1', description: 'MissileImpactOffset 1', format: DbcFieldFormat.float),
    FieldDefinition(index: 31, name: 'MissileImpactOffset2', description: 'MissileImpactOffset 2', format: DbcFieldFormat.float),
  ],
);
