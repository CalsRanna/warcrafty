import 'dart:io';

void main() async {
  final file = File('test/warcrafty_test.dart');
  var content = await file.readAsString();

  // 更新类名
  content = content.replaceAll('FieldOffsetCalculator', 'FieldOffsets');
  content = content.replaceAll('StringBlockHandler', 'StringBlock');
  content = content.replaceAll('StringTableBuilder', 'StringTable');
  content = content.replaceAll('BinarySearchResult', 'SearchResult');
  content = content.replaceAll('DbcFieldFormat', 'FieldType');
  content = content.replaceAll('DbcIndexBuilder', 'DbcIndex');

  // 更新枚举值
  content = content.replaceAll('FieldType.index', 'FieldType.id');
  content = content.replaceAll('.allStrings', '.all');

  // 更新方法名
  content = content.replaceAll('.readString(', '.read(');
  content = content.replaceAll('.addString(', '.add(');

  await file.writeAsString(content);
  print('Test file updated!');
}
