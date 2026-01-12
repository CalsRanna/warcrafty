List<int> parseVer(String v) => v.split('.').map(int.parse).toList();

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

void main() {
  print('Test: 3.3.5.12340 in range 3.0.1.8303-3.3.5.12340');
  print('Result: ${versionInRange("3.3.5.12340", "3.0.1.8303", "3.3.5.12340")}');
}
