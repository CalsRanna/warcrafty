import 'package:warcrafty/src/schema/field.dart';
import 'package:warcrafty/src/schema/schema.dart';

/// CreatureMovementInfo 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const creatureMovementInfo = DbcSchema(
  name: 'CreatureMovementInfo',
  format: 'nf',
  fields: [
    Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    Field(index: 1, name: 'SmoothFacingChaseRate', description: 'SmoothFacingChaseRate', type: FieldType.float),
  ],
);
