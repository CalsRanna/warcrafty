import 'package:warcrafty/src/schema/field.dart';
import 'package:warcrafty/src/schema/schema.dart';
import 'package:warcrafty/src/tools/locale_fields.dart';

/// TaxiNodes 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
final taxiNodes = DbcSchema(
  name: 'TaxiNodes',
  format: 'nifffsssssssssssssssssii',
  fields: [
    const Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    const Field(index: 1, name: 'ContinentID', description: 'ContinentID', type: FieldType.int32),
    const Field(index: 2, name: 'Pos0', description: 'Pos 0', type: FieldType.float),
    const Field(index: 3, name: 'Pos1', description: 'Pos 1', type: FieldType.float),
    const Field(index: 4, name: 'Pos2', description: 'Pos 2', type: FieldType.float),
    ...createLocaleFieldsWithFlag(5, 'Name_lang', 'Name_lang'),
    const Field(index: 22, name: 'MountCreatureID0', description: 'MountCreatureID 0', type: FieldType.int32),
    const Field(index: 23, name: 'MountCreatureID1', description: 'MountCreatureID 1', type: FieldType.int32),
  ],
);
