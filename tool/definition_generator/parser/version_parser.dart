/// 检查 BUILD 行是否匹配目标版本
bool checkVersionMatch(String buildLine, String target) {
  final versionsStr = buildLine.replaceFirst('BUILD ', '').trim();

  for (final versionPart in versionsStr.split(',')) {
    final part = versionPart.trim();
    if (part.isEmpty) continue;

    final (start, end) = parseVersionRange(part);
    if (versionInRange(target, start, end)) {
      return true;
    }
  }
  return false;
}

/// 检查 BUILD 行是否在 3.x 版本范围内
bool isVersion3x(String buildLine) {
  final versionsStr = buildLine.replaceFirst('BUILD ', '').trim();
  for (final versionPart in versionsStr.split(',')) {
    final part = versionPart.trim();
    if (part.isEmpty) continue;
    if (part.startsWith('3.')) return true;
    if (part.contains('-')) {
      final (start, end) = parseVersionRange(part);
      // 检查范围是否包含 3.x
      if (start.startsWith('3.') || end.startsWith('3.')) return true;
      // 检查范围是否跨越 3.x
      final startMajor = int.tryParse(start.split('.')[0]) ?? 0;
      final endMajor = int.tryParse(end.split('.')[0]) ?? 0;
      if (startMajor <= 3 && endMajor >= 3) return true;
    }
  }
  return false;
}

/// 解析版本范围
(String, String) parseVersionRange(String versionStr) {
  if (versionStr.contains('-')) {
    final parts = versionStr.split('-');
    return (parts[0].trim(), parts[1].trim());
  }
  return (versionStr.trim(), versionStr.trim());
}

/// 版本比较
List<int> parseVer(String v) {
  return v.split('.').map(int.parse).toList();
}

/// 检查版本是否在范围内
bool versionInRange(String target, String start, String end) {
  final t = parseVer(target);
  final s = parseVer(start);
  final e = parseVer(end);

  int compare(List<int> a, List<int> b) {
    for (int i = 0; i < a.length && i < b.length; i++) {
      if (a[i] < b[i]) return -1;
      if (a[i] > b[i]) return 1;
    }
    return 0;
  }

  return compare(s, t) <= 0 && compare(t, e) <= 0;
}
