import 'package:warcrafty/src/internal/field.dart';
import 'package:warcrafty/src/internal/schema.dart';
import 'package:warcrafty/src/internal/locale_field.dart';

/// WorldSafeLocs 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
final worldSafeLocs = DbcSchema(
  name: 'WorldSafeLocs',
  format: 'nifffsssssssssssssssss',
  fields: [
    const Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    const Field(index: 1, name: 'Continent', description: 'Continent', type: FieldType.int32),
    const Field(index: 2, name: 'Loc0', description: 'Loc 0', type: FieldType.float),
    const Field(index: 3, name: 'Loc1', description: 'Loc 1', type: FieldType.float),
    const Field(index: 4, name: 'Loc2', description: 'Loc 2', type: FieldType.float),
    ...createLocaleFieldsWithFlag(5, 'AreaName_lang', 'AreaName_lang'),
  ],
);
