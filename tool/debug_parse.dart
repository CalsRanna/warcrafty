import 'dart:io';

const targetVersion = '3.3.5.12340';

(String, String) parseVersionRange(String versionStr) {
  if (versionStr.contains('-')) {
    final parts = versionStr.split('-');
    return (parts[0].trim(), parts[1].trim());
  }
  return (versionStr.trim(), versionStr.trim());
}

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

bool checkVersionMatch(String buildLine, String targetVersion) {
  final versionsStr = buildLine.replaceFirst('BUILD ', '').trim();
  for (final versionPart in versionsStr.split(',')) {
    final part = versionPart.trim();
    if (part.isEmpty) continue;
    final (start, end) = parseVersionRange(part);
    if (versionInRange(targetVersion, start, end)) {
      return true;
    }
  }
  return false;
}

void main() {
  final file = File(r'D:\Code\WoWDBDefs\definitions\AreaTrigger.dbd');
  final lines = file.readAsLinesSync();

  print('Checking AreaTrigger.dbd for BUILD lines...\n');

  for (var i = 0; i < lines.length; i++) {
    final line = lines[i].trim();
    if (line.startsWith('BUILD ')) {
      final matched = checkVersionMatch(line, targetVersion);
      print('Line ${i + 1}: $line');
      print('  -> Matched: $matched\n');
    }
  }
}
