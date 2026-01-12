/// SpellCategory.dbc - 法术类别格式
library;

import '../base/field_definition.dart';
import '../base/structure_definition.dart';
import '../../core/field_format.dart';

/// SpellCategory 格式字符串
const String spellCategoryFormat = 'ni';

/// SpellCategory 结构定义
const DbcStructureDefinition spellCategory = DbcStructureDefinition(
  name: 'SpellCategory',
  format: spellCategoryFormat,
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 1, name: 'Flags', description: '标志', format: DbcFieldFormat.intType),
  ],
);
