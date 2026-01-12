import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';
import 'package:warcrafty/src/definition/common/locale_fields.dart';

/// Exhaustion 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
final exhaustion = DbcStructureDefinition(
  name: 'Exhaustion',
  format: 'nifffsssssssssssssssssf',
  fields: [
    const FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.indexField),
    const FieldDefinition(index: 1, name: 'Xp', description: 'Xp', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 2, name: 'Factor', description: 'Factor', format: DbcFieldFormat.float),
    const FieldDefinition(index: 3, name: 'OutdoorHours', description: 'OutdoorHours', format: DbcFieldFormat.float),
    const FieldDefinition(index: 4, name: 'InnHours', description: 'InnHours', format: DbcFieldFormat.float),
    ...createLocaleFieldsWithFlag(5, 'Name_lang', 'Name_lang'),
    const FieldDefinition(index: 22, name: 'Threshold', description: 'Threshold', format: DbcFieldFormat.float),
  ],
);
