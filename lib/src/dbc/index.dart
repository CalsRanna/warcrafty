import 'package:warcrafty/src/dbc/record.dart';

import 'loader.dart';

/// DBC 索引
///
/// 支持通过 ID 快速查找记录。
final class DbcIndex<T> {
  final Map<int, T> _table = {};
  final int _indexField;

  /// 从记录列表创建索引
  DbcIndex(List<T> records, [this._indexField = 0]) {
    for (final record in records) {
      final id = _getId(record);
      _table[id] = record;
    }
  }

  /// 从 DbcLoader 创建索引
  factory DbcIndex.fromLoader(
    DbcLoader loader,
    T Function(DbcRecord record) parse,
  ) {
    final records = loader.records.map(parse).toList();
    return DbcIndex(records, loader.offsets.indexField);
  }

  int _getId(T record) {
    if (record is DbcRecord) return record.getInt(_indexField);
    if (record is Map<String, dynamic>) return record['ID'] as int;
    throw ArgumentError('Unsupported record type: $T');
  }

  /// 通过 ID 查找
  T? lookup(int id) => _table[id];

  /// 通过 ID 查找，不存在则抛出异常
  T lookupOrThrow(int id) {
    final record = _table[id];
    if (record == null) throw StateError('Record not found: $id');
    return record;
  }

  /// 检查 ID 是否存在
  bool contains(int id) => _table.containsKey(id);

  /// 所有 ID
  List<int> get allIds => _table.keys.toList()..sort();

  /// 记录数量
  int get count => _table.length;

  /// 索引字段位置
  int get indexField => _indexField;

  /// 所有记录
  List<T> get records => List.unmodifiable(_table.values);

  /// 下标访问
  T? operator [](int id) => lookup(id);

  @override
  String toString() => 'DbcIndex(count: $count)';
}
