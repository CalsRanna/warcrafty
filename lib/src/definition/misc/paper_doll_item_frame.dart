import 'package:warcrafty/src/schema/field.dart';
import 'package:warcrafty/src/schema/schema.dart';

/// PaperDollItemFrame 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const paperDollItemFrame = DbcSchema(
  name: 'PaperDollItemFrame',
  format: 'ssi',
  fields: [
    Field(index: 0, name: 'ItemButtonName', description: 'ItemButtonName', type: FieldType.string),
    Field(index: 1, name: 'SlotIcon', description: 'SlotIcon', type: FieldType.string),
    Field(index: 2, name: 'SlotNumber', description: 'SlotNumber', type: FieldType.int32),
  ],
);
