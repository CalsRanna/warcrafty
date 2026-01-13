import 'package:warcrafty/src/internal/field.dart';
import 'package:warcrafty/src/internal/schema.dart';

/// MovieFileData 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const movieFileData = DbcSchema(
  name: 'MovieFileData',
  format: 'ni',
  fields: [
    Field(index: 0, name: 'FileDataID', description: 'FileDataID', type: FieldType.id),
    Field(index: 1, name: 'Resolution', description: 'Resolution', type: FieldType.int32),
  ],
);
