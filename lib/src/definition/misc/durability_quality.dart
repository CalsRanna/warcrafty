import 'package:warcrafty/src/core/field_definition.dart';
import 'package:warcrafty/src/core/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// DurabilityQuality 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const durabilityQuality = DbcStructureDefinition(
  name: 'DurabilityQuality',
  format: 'nf',
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.indexField),
    FieldDefinition(index: 1, name: 'Data', description: 'Data', format: DbcFieldFormat.float),
  ],
);
