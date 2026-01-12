import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// AchievementCategory 结构定义
const achievementCategory = DbcStructureDefinition(
  name: 'AchievementCategory',
  format: 'nixxxxxxxxxxxxxxxxxx',
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: '类别 ID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 1, name: 'ParentCategory', description: '父类别 ID (-1=主类别)', format: DbcFieldFormat.intType),
  ],
);
