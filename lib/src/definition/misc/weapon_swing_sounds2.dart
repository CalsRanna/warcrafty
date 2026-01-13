import 'package:warcrafty/src/internal/field.dart';
import 'package:warcrafty/src/internal/schema.dart';

/// WeaponSwingSounds2 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const weaponSwingSounds2 = DbcSchema(
  name: 'WeaponSwingSounds2',
  format: 'niii',
  fields: [
    Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    Field(index: 1, name: 'SwingType', description: 'SwingType', type: FieldType.int32),
    Field(index: 2, name: 'Crit', description: 'Crit', type: FieldType.int32),
    Field(index: 3, name: 'SoundID', description: 'SoundID', type: FieldType.int32),
  ],
);
