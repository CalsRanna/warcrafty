/// MailTemplate.dbc - 邮件模板格式
library;

import '../base/field_definition.dart';
import '../base/structure_definition.dart';
import '../../core/field_format.dart';

/// MailTemplate 格式字符串
const String mailTemplateFormat = 'nxxxxxxxxxxxxxxxxxssssssssssssssssx';

/// MailTemplate 结构定义
const DbcStructureDefinition mailTemplate = DbcStructureDefinition(
  name: 'MailTemplate',
  format: mailTemplateFormat,
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 1, name: 'Unknown1', description: '未知1', format: DbcFieldFormat.na),
    FieldDefinition(index: 2, name: 'Subject', description: '主题', format: DbcFieldFormat.string),
    FieldDefinition(index: 3, name: 'Body', description: '内容', format: DbcFieldFormat.string),
    FieldDefinition(index: 4, name: 'Unknown2', description: '未知2', format: DbcFieldFormat.na),
  ],
);
