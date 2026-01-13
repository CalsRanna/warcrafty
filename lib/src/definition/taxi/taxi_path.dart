import 'package:warcrafty/src/internal/field.dart';
import 'package:warcrafty/src/internal/schema.dart';

/// TaxiPath 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const taxiPath = DbcSchema(
  name: 'TaxiPath',
  format: 'niii',
  fields: [
    Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    Field(index: 1, name: 'FromTaxiNode', description: 'FromTaxiNode', type: FieldType.int32),
    Field(index: 2, name: 'ToTaxiNode', description: 'ToTaxiNode', type: FieldType.int32),
    Field(index: 3, name: 'Cost', description: 'Cost', type: FieldType.int32),
  ],
);
