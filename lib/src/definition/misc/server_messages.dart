import 'package:warcrafty/src/core/field_definition.dart';
import 'package:warcrafty/src/core/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';
import 'package:warcrafty/src/core/locale_fields.dart';

/// ServerMessages 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
final serverMessages = DbcStructureDefinition(
  name: 'ServerMessages',
  format: 'nsssssssssssssssss',
  fields: [
    const FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.indexField),
    ...createLocaleFieldsWithFlag(1, 'Text_lang', 'Text_lang'),
  ],
);
