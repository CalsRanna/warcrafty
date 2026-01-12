/// SpellVisual.dbc - 法术视觉格式
library;

import '../base/field_definition.dart';
import '../base/structure_definition.dart';
import '../../core/field_format.dart';

/// SpellVisual 格式字符串
const String spellVisualFormat = 'dxxxxxxiixxxxxxxxxxxxxxxxxxxxxxx';

/// SpellVisual 结构定义
const DbcStructureDefinition spellVisual = DbcStructureDefinition(
  name: 'SpellVisual',
  format: spellVisualFormat,
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.sort),
    FieldDefinition(index: 1, name: 'Unknown1', description: '未知1', format: DbcFieldFormat.na),
    FieldDefinition(index: 2, name: 'Unknown2', description: '未知2', format: DbcFieldFormat.intType),
    FieldDefinition(index: 3, name: 'Unknown3', description: '未知3', format: DbcFieldFormat.intType),
  ],
);
