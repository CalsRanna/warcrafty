/// DBC 文件格式定义
///
/// 提供与 AzerothCore DBCfmt.h 和 DBCStructure.h 完全对齐的格式定义。
/// 包含所有常用 DBC 文件的格式字符串和完整字段定义。
library;

export 'base/field_definition.dart'
    show FieldDefinition, FieldDefinitionBuilder;
export 'base/structure_definition.dart'
    show DbcStructureDefinition, DbcStructureDefinitionCollection;

// 统一格式接口
export 'definition.dart' show Definitions, DbcFormatStrings, DbcStructures;
