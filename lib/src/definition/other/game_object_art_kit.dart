import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// GameObjectArtKit 格式字符串

/// GameObjectArtKit 结构定义
const gameObjectArtKit = DbcStructureDefinition(
  name: 'GameObjectArtKit',
  format: 'nxxxxxxx',
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 1, name: 'Unknown1', description: '未知1', format: DbcFieldFormat.na),
    FieldDefinition(index: 2, name: 'Unknown2', description: '未知2', format: DbcFieldFormat.na),
    FieldDefinition(index: 3, name: 'Unknown3', description: '未知3', format: DbcFieldFormat.na),
    FieldDefinition(index: 4, name: 'Unknown4', description: '未知4', format: DbcFieldFormat.na),
  ],
);
