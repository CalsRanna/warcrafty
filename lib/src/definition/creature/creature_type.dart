/// CreatureType.dbc - 生物类型格式
library;

import '../base/field_definition.dart';
import '../base/structure_definition.dart';
import '../../core/field_format.dart';

/// CreatureType 格式字符串
const String creatureTypeFormat = 'nxxxxxxxxxxxxxxxxxx';

/// CreatureType 结构定义
const DbcStructureDefinition creatureType = DbcStructureDefinition(
  name: 'CreatureType',
  format: creatureTypeFormat,
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: '类型 ID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 1, name: 'Name', description: '名称', format: DbcFieldFormat.na),
  ],
);
