import 'package:warcrafty/src/internal/field.dart';
import 'package:warcrafty/src/internal/schema.dart';

/// AnimationData 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const animationData = DbcSchema(
  name: 'AnimationData',
  format: 'nsiiiiii',
  fields: [
    Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    Field(index: 1, name: 'Name', description: 'Name', type: FieldType.string),
    Field(index: 2, name: 'Weaponflags', description: 'Weaponflags', type: FieldType.int32),
    Field(index: 3, name: 'Bodyflags', description: 'Bodyflags', type: FieldType.int32),
    Field(index: 4, name: 'Flags', description: 'Flags', type: FieldType.int32),
    Field(index: 5, name: 'Fallback', description: 'Fallback', type: FieldType.int32),
    Field(index: 6, name: 'BehaviorID', description: 'BehaviorID', type: FieldType.int32),
    Field(index: 7, name: 'BehaviorTier', description: 'BehaviorTier', type: FieldType.int32),
  ],
);
