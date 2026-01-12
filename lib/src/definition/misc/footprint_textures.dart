import 'package:warcrafty/src/schema/field.dart';
import 'package:warcrafty/src/schema/schema.dart';

/// FootprintTextures 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const footprintTextures = DbcSchema(
  name: 'FootprintTextures',
  format: 'ns',
  fields: [
    Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    Field(index: 1, name: 'FootstepFilename', description: 'FootstepFilename', type: FieldType.string),
  ],
);
