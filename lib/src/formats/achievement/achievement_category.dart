/// AchievementCategory.dbc - 成就类别格式
library;

import '../base/field_definition.dart';
import '../base/structure_definition.dart';
import '../../core/field_format.dart';

/// AchievementCategory 格式字符串
const String achievementCategoryFormat = 'nixxxxxxxxxxxxxxxxxx';

/// AchievementCategory 结构定义
const DbcStructureDefinition achievementCategory = DbcStructureDefinition(
  name: 'AchievementCategory',
  format: achievementCategoryFormat,
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: '类别 ID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 1, name: 'ParentCategory', description: '父类别 ID (-1=主类别)', format: DbcFieldFormat.intType),
  ],
);
