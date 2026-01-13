import 'package:warcrafty/src/internal/field.dart';
import 'package:warcrafty/src/internal/schema.dart';

/// LiquidMaterial 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const liquidMaterial = DbcSchema(
  name: 'LiquidMaterial',
  format: 'nii',
  fields: [
    Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    Field(index: 1, name: 'LVF', description: 'LVF', type: FieldType.int32),
    Field(index: 2, name: 'Flags', description: 'Flags', type: FieldType.int32),
  ],
);
