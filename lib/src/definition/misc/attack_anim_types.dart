import 'package:warcrafty/src/schema/field.dart';
import 'package:warcrafty/src/schema/schema.dart';

/// AttackAnimTypes 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const attackAnimTypes = DbcSchema(
  name: 'AttackAnimTypes',
  format: 'is',
  fields: [
    Field(index: 0, name: 'AnimID', description: 'AnimID', type: FieldType.int32),
    Field(index: 1, name: 'AnimName', description: 'AnimName', type: FieldType.string),
  ],
);
