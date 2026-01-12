/// SpellCastTime.dbc - 法术施放时间格式
library;

import '../base/field_definition.dart';
import '../base/structure_definition.dart';
import '../../core/field_format.dart';

/// SpellCastTime 格式字符串
const String spellCastTimeFormat = 'nixx';

/// SpellCastTime 结构定义
const DbcStructureDefinition spellCastTime = DbcStructureDefinition(
  name: 'SpellCastTime',
  format: spellCastTimeFormat,
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 1, name: 'CastTime', description: '施放时间', format: DbcFieldFormat.intType),
    FieldDefinition(index: 2, name: 'Unknown1', description: '未知1', format: DbcFieldFormat.na),
    FieldDefinition(index: 3, name: 'Unknown2', description: '未知2', format: DbcFieldFormat.na),
  ],
);
