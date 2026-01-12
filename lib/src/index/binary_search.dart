import 'package:warcrafty/src/core/dbc_loader.dart';

/// 二分搜索结果
final class BinarySearchResult<T> {
  final int index;
  final T? value;
  final bool found;

  BinarySearchResult(this.index, this.value, this.found);

  /// 找到
  bool get isFound => found;

  /// 未找到，应该插入的位置
  int get insertionPoint => found ? index : -index - 1;
}

/// 二分搜索工具类
final class BinarySearch {
  BinarySearch._();

  /// 在已排序的列表中查找目标值
  ///
  /// [list] - 已排序的列表
  /// [target] - 目标值
  /// [compare] - 比较函数，返回负数表示小于，返回 0 表示等于，返回正数表示大于
  /// 返回查找结果
  static BinarySearchResult<T> search<T>(
    List<T> list,
    int target,
    int Function(T record) compare,
  ) {
    int low = 0;
    int high = list.length - 1;

    while (low <= high) {
      final middle = (low + high) >> 1; // 除以 2 取整
      final record = list[middle];
      final cmp = compare(record);

      if (cmp == 0) {
        return BinarySearchResult(middle, record, true);
      } else if (cmp < 0) {
        low = middle + 1;
      } else {
        high = middle - 1;
      }
    }

    return BinarySearchResult(-1, null, false);
  }

  /// 在已排序的列表中查找目标值 (泛型版本)
  ///
  /// [list] - 已排序的列表
  /// [target] - 目标值
  /// [keyExtractor] - 从元素提取键的函数
  /// 返回查找结果，未找到时 value 为 null
  static BinarySearchResult<int?> searchByKey<T>(
    List<T> list,
    int target,
    int Function(T element) keyExtractor,
  ) {
    int low = 0;
    int high = list.length - 1;

    while (low <= high) {
      final middle = (low + high) >> 1;
      final record = list[middle];
      final key = keyExtractor(record);

      if (key == target) {
        return BinarySearchResult(middle, key, true);
      } else if (key < target) {
        low = middle + 1;
      } else {
        high = middle - 1;
      }
    }

    return BinarySearchResult(-1, null, false);
  }

  /// 在已排序的列表中查找第一个大于或等于目标值的位置
  ///
  /// [list] - 已排序的列表
  /// [target] - 目标值
  /// [compare] - 比较函数
  /// 返回插入位置 (第一个大于 target 的位置)
  static int lowerBound<T>(
    List<T> list,
    int target,
    int Function(T record) compare,
  ) {
    int low = 0;
    int high = list.length;

    while (low < high) {
      final middle = (low + high) >> 1;
      if (compare(list[middle]) < target) {
        low = middle + 1;
      } else {
        high = middle;
      }
    }

    return low;
  }

  /// 在已排序的列表中查找第一个大于目标值的位置
  ///
  /// [list] - 已排序的列表
  /// [target] - 目标值
  /// [compare] - 比较函数
  /// 返回插入位置 (第一个大于 target 的位置)
  static int upperBound<T>(
    List<T> list,
    int target,
    int Function(T record) compare,
  ) {
    int low = 0;
    int high = list.length;

    while (low < high) {
      final middle = (low + high) >> 1;
      if (compare(list[middle]) <= target) {
        low = middle + 1;
      } else {
        high = middle;
      }
    }

    return low;
  }

  /// 在记录列表中查找指定 ID 的记录
  ///
  /// [records] - 记录列表 (需按 ID 排序)
  /// [id] - 要查找的 ID
  /// 返回查找结果
  static BinarySearchResult<DbcRecord> findById(
    List<DbcRecord> records,
    int id,
  ) {
    return search(records, id, (record) => record.getInt(0));
  }

  /// 在记录列表中查找指定 ID 的记录 (通过 ID 字段)
  ///
  /// [records] - 记录列表 (需按 ID 排序)
  /// [id] - 要查找的 ID
  /// [idField] - ID 字段索引
  /// 返回查找结果
  static BinarySearchResult<DbcRecord> findByIdField(
    List<DbcRecord> records,
    int id,
    int idField,
  ) {
    return search(records, id, (record) => record.getInt(idField));
  }
}
