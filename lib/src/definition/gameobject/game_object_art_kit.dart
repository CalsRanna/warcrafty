import 'package:warcrafty/src/schema/field.dart';
import 'package:warcrafty/src/schema/schema.dart';

/// GameObjectArtKit 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const gameObjectArtKit = DbcSchema(
  name: 'GameObjectArtKit',
  format: 'nsssssss',
  fields: [
    Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    Field(index: 1, name: 'TextureVariation0', description: 'TextureVariation 0', type: FieldType.string),
    Field(index: 2, name: 'TextureVariation1', description: 'TextureVariation 1', type: FieldType.string),
    Field(index: 3, name: 'TextureVariation2', description: 'TextureVariation 2', type: FieldType.string),
    Field(index: 4, name: 'AttachModel0', description: 'AttachModel 0', type: FieldType.string),
    Field(index: 5, name: 'AttachModel1', description: 'AttachModel 1', type: FieldType.string),
    Field(index: 6, name: 'AttachModel2', description: 'AttachModel 2', type: FieldType.string),
    Field(index: 7, name: 'AttachModel3', description: 'AttachModel 3', type: FieldType.string),
  ],
);
