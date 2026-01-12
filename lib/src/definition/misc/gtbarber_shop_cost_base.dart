import 'package:warcrafty/src/core/field_definition.dart';
import 'package:warcrafty/src/core/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// gtBarberShopCostBase 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const gtbarberShopCostBase = DbcStructureDefinition(
  name: 'gtBarberShopCostBase',
  format: 'f',
  fields: [
    FieldDefinition(index: 0, name: 'Data', description: 'Data', format: DbcFieldFormat.float),
  ],
);
