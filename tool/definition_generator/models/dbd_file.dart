import 'column_def.dart';
import 'field_def.dart';

/// 完整的 .dbd 文件解析结果
class DbdFile {
  /// DBC 名称
  final String name;

  /// 列定义 (类型信息)
  final Map<String, ColumnDef> columns = {};

  /// 目标版本的字段列表
  final List<FieldDef> targetFields = [];

  /// 是否找到目标版本
  bool hasTargetVersion = false;

  DbdFile(this.name);
}
