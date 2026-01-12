import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// VehicleUIIndicator 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const vehicleUIIndicator = DbcStructureDefinition(
  name: 'VehicleUIIndicator',
  format: 'ns',
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.indexField),
    FieldDefinition(index: 1, name: 'BackgroundTexture', description: 'BackgroundTexture', format: DbcFieldFormat.string),
  ],
);
