import 'package:warcrafty/src/schema/field.dart';
import 'package:warcrafty/src/schema/schema.dart';

/// SpellRadius 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const spellRadius = DbcSchema(
  name: 'SpellRadius',
  format: 'nfff',
  fields: [
    Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    Field(index: 1, name: 'Radius', description: 'Radius', type: FieldType.float),
    Field(index: 2, name: 'RadiusPerLevel', description: 'RadiusPerLevel', type: FieldType.float),
    Field(index: 3, name: 'RadiusMax', description: 'RadiusMax', type: FieldType.float),
  ],
);
