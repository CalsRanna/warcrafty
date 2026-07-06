import 'dart:io';

import 'package:test/test.dart';
import 'package:warcrafty/warcrafty.dart';
import 'package:warcrafty/src/internal/locale_field.dart';

/// locstring 字段往返测试
///
/// 经典 WDBC 中 locstring = 16 个语言字符串偏移 (s) + 1 个 uint32 标志位 (i)。
/// 此前格式串把标志位也标成 's'，导致导入把它当字符串读、导出要求 String，
/// 镜像操作出现类型不匹配。该测试锁定：标志位以 int 写入并以 int 读回。
void main() {
  final fields = createLocaleFieldsWithFlag(0, 'Name', 'Name'); // 16 string + 1 int32
  final format = '${'s' * 16}i';

  late File tmpFile;

  setUp(() {
    tmpFile = File('${Directory.systemTemp.path}/warcrafty_locstring_test.dbc');
    if (tmpFile.existsSync()) tmpFile.deleteSync();
  });

  tearDown(() {
    if (tmpFile.existsSync()) tmpFile.deleteSync();
  });

  test('locstring 格式串为 16 s + 1 i，与字段定义一一对应', () {
    expect(format.length, equals(fields.length));
    for (var i = 0; i < fields.length; i++) {
      expect(
        format[i],
        equals(fields[i].type.char),
        reason: 'index $i: format=${format[i]} vs field=${fields[i].type.char}',
      );
    }
    // 第 17 个槽位是标志位 (int32)，不是字符串
    expect(format[16], equals('i'));
    expect(fields[16].type, equals(FieldType.int32));
  });

  test('locstring 标志位以 int 写入并以 int 读回', () {
    const flagValue = 0x12345678; // 非零标志位
    final record = <dynamic>[
      for (var i = 0; i < 16; i++) 'locale_$i',
      flagValue,
    ];

    DbcWriter.writeToPath(tmpFile.path, format, [record]);

    final loader = DbcLoader(tmpFile.path, format);
    expect(loader.recordCount, equals(1));
    final r = loader.getRecord(0);

    // 16 个语言字符串往返
    for (var i = 0; i < 16; i++) {
      expect(r.getString(i), equals('locale_$i'));
    }
    // 标志位是 int32，往返保持一致
    expect(r.getInt(16), equals(flagValue));
  });

  test('toMap 将标志位导出为 int 而非 String', () {
    const flagValue = 0x0000000E;
    final record = <dynamic>[
      for (var i = 0; i < 16; i++) 's$i',
      flagValue,
    ];

    DbcWriter.writeToPath(tmpFile.path, format, [record]);
    final loader = DbcLoader(tmpFile.path, format);
    final map = loader.getRecord(0).toMap();

    expect(map['field_16'], equals(flagValue));
    expect(map['field_16'], isA<int>());
    expect(map['field_16'], isNot(isA<String>()));
  });
}
