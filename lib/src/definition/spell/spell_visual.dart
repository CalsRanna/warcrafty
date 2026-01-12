import 'package:warcrafty/src/schema/field.dart';
import 'package:warcrafty/src/schema/schema.dart';

/// SpellVisual 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const spellVisual = DbcSchema(
  name: 'SpellVisual',
  format: 'niiiiiiiiiiiiiiiiiiiiiiiiiffffff',
  fields: [
    Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    Field(index: 1, name: 'PrecastKit', description: 'PrecastKit', type: FieldType.int32),
    Field(index: 2, name: 'CastKit', description: 'CastKit', type: FieldType.int32),
    Field(index: 3, name: 'ImpactKit', description: 'ImpactKit', type: FieldType.int32),
    Field(index: 4, name: 'StateKit', description: 'StateKit', type: FieldType.int32),
    Field(index: 5, name: 'StateDoneKit', description: 'StateDoneKit', type: FieldType.int32),
    Field(index: 6, name: 'ChannelKit', description: 'ChannelKit', type: FieldType.int32),
    Field(index: 7, name: 'HasMissile', description: 'HasMissile', type: FieldType.int32),
    Field(index: 8, name: 'MissileModel', description: 'MissileModel', type: FieldType.int32),
    Field(index: 9, name: 'MissilePathType', description: 'MissilePathType', type: FieldType.int32),
    Field(index: 10, name: 'MissileDestinationAttachment', description: 'MissileDestinationAttachment', type: FieldType.int32),
    Field(index: 11, name: 'MissileSound', description: 'MissileSound', type: FieldType.int32),
    Field(index: 12, name: 'AnimEventSoundID', description: 'AnimEventSoundID', type: FieldType.int32),
    Field(index: 13, name: 'Flags', description: 'Flags', type: FieldType.int32),
    Field(index: 14, name: 'CasterImpactKit', description: 'CasterImpactKit', type: FieldType.int32),
    Field(index: 15, name: 'TargetImpactKit', description: 'TargetImpactKit', type: FieldType.int32),
    Field(index: 16, name: 'MissileAttachment', description: 'MissileAttachment', type: FieldType.int32),
    Field(index: 17, name: 'MissileFollowGroundHeight', description: 'MissileFollowGroundHeight', type: FieldType.int32),
    Field(index: 18, name: 'MissileFollowGroundDropSpeed', description: 'MissileFollowGroundDropSpeed', type: FieldType.int32),
    Field(index: 19, name: 'MissileFollowGroundApproach', description: 'MissileFollowGroundApproach', type: FieldType.int32),
    Field(index: 20, name: 'MissileFollowGroundFlags', description: 'MissileFollowGroundFlags', type: FieldType.int32),
    Field(index: 21, name: 'MissileMotion', description: 'MissileMotion', type: FieldType.int32),
    Field(index: 22, name: 'MissileTargetingKit', description: 'MissileTargetingKit', type: FieldType.int32),
    Field(index: 23, name: 'InstantAreaKit', description: 'InstantAreaKit', type: FieldType.int32),
    Field(index: 24, name: 'ImpactAreaKit', description: 'ImpactAreaKit', type: FieldType.int32),
    Field(index: 25, name: 'PersistentAreaKit', description: 'PersistentAreaKit', type: FieldType.int32),
    Field(index: 26, name: 'MissileCastOffset0', description: 'MissileCastOffset 0', type: FieldType.float),
    Field(index: 27, name: 'MissileCastOffset1', description: 'MissileCastOffset 1', type: FieldType.float),
    Field(index: 28, name: 'MissileCastOffset2', description: 'MissileCastOffset 2', type: FieldType.float),
    Field(index: 29, name: 'MissileImpactOffset0', description: 'MissileImpactOffset 0', type: FieldType.float),
    Field(index: 30, name: 'MissileImpactOffset1', description: 'MissileImpactOffset 1', type: FieldType.float),
    Field(index: 31, name: 'MissileImpactOffset2', description: 'MissileImpactOffset 2', type: FieldType.float),
  ],
);
