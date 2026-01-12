/// 索引构建器
///
/// 根据 DBC 文件中的索引字段 (FT_IND = 'n') 构建快速查找索引。
library;

import '../core/dbc_loader.dart';

/// 索引构建器
///
/// 从 DbcLoader 构建索引表，支持通过 ID 快速查找记录。
final class DbcIndexBuilder<T> {
  final List<T> _records;
  final Map<int, T> _indexTable;
  final int _indexField;

  /// 创建索引构建器
  ///
  /// [records] - 记录列表
  /// [indexField] - 索引字段的位置 (格式字符串中的索引)
  DbcIndexBuilder(List<T> records, [this._indexField = 0])
    : _records = records,
      _indexTable = {} {
    _buildIndex();
  }

  /// 从 DbcLoader 构建索引
  ///
  /// [loader] - DBC 加载器
  /// [parseRecord] - 解析函数，将 DbcRecord 转换为目标类型
  factory DbcIndexBuilder.fromLoader(
    DbcLoader loader,
    T Function(DbcRecord record) parseRecord,
  ) {
    final records = <T>[];
    for (final record in loader.records) {
      records.add(parseRecord(record));
    }
    return DbcIndexBuilder(records, loader.fieldOffsets.indexField);
  }

  /// 构建索引
  void _buildIndex() {
    for (final record in _records) {
      final id = _getId(record);
      _indexTable[id] = record;
    }
  }

  /// 从记录中提取 ID
  int _getId(T record) {
    if (record is DbcRecord) {
      return record.getInt(_indexField);
    }
    if (record is Map<String, dynamic>) {
      return record['ID'] as int;
    }
    throw ArgumentError('Unsupported record type: $T');
  }

  /// 通过 ID 查找记录
  ///
  /// [id] - 要查找的 ID
  /// 返回对应的记录，如果不存在返回 null
  T? lookup(int id) => _indexTable[id];

  /// 通过 ID 查找记录，如果不存在抛出异常
  T lookupOrThrow(int id) {
    final record = _indexTable[id];
    if (record == null) {
      throw FormatException('Record not found for ID: $id');
    }
    return record;
  }

  /// 检查 ID 是否存在
  bool contains(int id) => _indexTable.containsKey(id);

  /// 获取所有 ID
  List<int> get allIds => _indexTable.keys.toList()..sort();

  /// 获取记录数量
  int get count => _indexTable.length;

  /// 获取索引字段
  int get indexField => _indexField;

  /// 获取所有记录
  List<T> get records => List.unmodifiable(_indexTable.values);

  /// 通过 ID 获取记录，支持默认值
  T? operator [](int id) => lookup(id);

  @override
  String toString() {
    return 'DbcIndexBuilder(count: $count, indexField: $_indexField)';
  }
}
