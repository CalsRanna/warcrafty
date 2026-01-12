import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// GameObjectArtKit 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const gameObjectArtKit = DbcStructureDefinition(
  name: 'GameObjectArtKit',
  format: 'nsssssss',
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.indexField),
    FieldDefinition(index: 1, name: 'TextureVariation0', description: 'TextureVariation 0', format: DbcFieldFormat.string),
    FieldDefinition(index: 2, name: 'TextureVariation1', description: 'TextureVariation 1', format: DbcFieldFormat.string),
    FieldDefinition(index: 3, name: 'TextureVariation2', description: 'TextureVariation 2', format: DbcFieldFormat.string),
    FieldDefinition(index: 4, name: 'AttachModel0', description: 'AttachModel 0', format: DbcFieldFormat.string),
    FieldDefinition(index: 5, name: 'AttachModel1', description: 'AttachModel 1', format: DbcFieldFormat.string),
    FieldDefinition(index: 6, name: 'AttachModel2', description: 'AttachModel 2', format: DbcFieldFormat.string),
    FieldDefinition(index: 7, name: 'AttachModel3', description: 'AttachModel 3', format: DbcFieldFormat.string),
  ],
);
