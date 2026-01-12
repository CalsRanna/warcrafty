/// 二分搜索结果
final class SearchResult<T> {
  final int index;
  final T? value;
  final bool found;

  SearchResult(this.index, this.value, this.found);

  /// 未找到时应该插入的位置
  int get insertionPoint => found ? index : -index - 1;
}

/// 二分搜索工具
final class BinarySearch {
  BinarySearch._();

  /// 在已排序的列表中查找目标值
  static SearchResult<T> search<T>(
    List<T> list,
    int target,
    int Function(T element) keyExtractor,
  ) {
    int low = 0;
    int high = list.length - 1;

    while (low <= high) {
      final mid = (low + high) >> 1;
      final element = list[mid];
      final key = keyExtractor(element);

      if (key == target) {
        return SearchResult(mid, element, true);
      } else if (key < target) {
        low = mid + 1;
      } else {
        high = mid - 1;
      }
    }

    return SearchResult(-1, null, false);
  }

  /// 查找第一个大于等于目标值的位置
  static int lowerBound<T>(
    List<T> list,
    int target,
    int Function(T element) keyExtractor,
  ) {
    int low = 0;
    int high = list.length;

    while (low < high) {
      final mid = (low + high) >> 1;
      if (keyExtractor(list[mid]) < target) {
        low = mid + 1;
      } else {
        high = mid;
      }
    }

    return low;
  }

  /// 查找第一个大于目标值的位置
  static int upperBound<T>(
    List<T> list,
    int target,
    int Function(T element) keyExtractor,
  ) {
    int low = 0;
    int high = list.length;

    while (low < high) {
      final mid = (low + high) >> 1;
      if (keyExtractor(list[mid]) <= target) {
        low = mid + 1;
      } else {
        high = mid;
      }
    }

    return low;
  }
}
