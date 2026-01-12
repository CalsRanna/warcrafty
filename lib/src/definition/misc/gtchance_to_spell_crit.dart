import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// gtChanceToSpellCrit 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const gtchanceToSpellCrit = DbcStructureDefinition(
  name: 'gtChanceToSpellCrit',
  format: 'f',
  fields: [
    FieldDefinition(index: 0, name: 'Data', description: 'Data', format: DbcFieldFormat.float),
  ],
);
