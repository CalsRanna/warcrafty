import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// GtNPCManaCostScaler 格式字符串

/// GtNPCManaCostScaler 结构定义
///
/// 格式字符串参考 AzerothCore: 单个浮点数
const gtNpcManaCostScaler = DbcStructureDefinition(
  name: 'GtNPCManaCostScaler',
  format: 'f',
  fields: [
    FieldDefinition(index: 0, name: 'Value', description: '值', format: DbcFieldFormat.float),
  ],
);
