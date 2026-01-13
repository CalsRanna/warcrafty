import 'package:warcrafty/src/internal/field.dart';
import 'package:warcrafty/src/internal/schema.dart';

/// AttackAnimKits 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const attackAnimKits = DbcSchema(
  name: 'AttackAnimKits',
  format: 'niiii',
  fields: [
    Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    Field(index: 1, name: 'ItemSubclassID', description: 'ItemSubclassID', type: FieldType.int32),
    Field(index: 2, name: 'AnimTypeID', description: 'AnimTypeID', type: FieldType.int32),
    Field(index: 3, name: 'AnimFrequency', description: 'AnimFrequency', type: FieldType.int32),
    Field(index: 4, name: 'WhichHand', description: 'WhichHand', type: FieldType.int32),
  ],
);
