import 'dart:io';

import 'package:test/test.dart';

import '../tool/definition_generator/config.dart';
import '../tool/definition_generator/generator/definition_generator.dart';
import '../tool/definition_generator/models/column_def.dart';
import '../tool/definition_generator/models/dbd_file.dart';
import '../tool/definition_generator/models/field_def.dart';
import '../tool/definition_generator/parser/dbd_parser.dart';

void main() {
  group('definition generator', () {
    late Directory tempDir;

    setUp(() {
      tempDir = Directory.systemTemp.createTempSync(
        'warcrafty_generator_test_',
      );
    });

    tearDown(() {
      if (tempDir.existsSync()) tempDir.deleteSync(recursive: true);
    });

    File writeDbd(String name, String content) {
      final file = File('${tempDir.path}/$name.dbd');
      file.writeAsStringSync(content);
      return file;
    }

    test('matches only the requested target version without 3.x fallback', () {
      final file = writeDbd('Example', '''
COLUMNS
int ID

BUILD 3.0.1.8303
\$id\$ID<32>
''');

      final dbd = parseDbdFile(file, '3.3.5.12340');

      expect(dbd.hasTargetVersion, isFalse);
      expect(dbd.targetFields, isEmpty);
    });

    test('parses target version ranges exactly', () {
      final file = writeDbd('Example', '''
COLUMNS
int ID

BUILD 3.0.1.8303-3.3.5.12340
\$id\$ID<32>
''');

      final dbd = parseDbdFile(file, '3.3.5.12340');

      expect(dbd.hasTargetVersion, isTrue);
      expect(dbd.targetFields.single.name, equals('ID'));
    });

    test('throws for invalid target field lines', () {
      final file = writeDbd('Example', '''
COLUMNS
int ID

BUILD 3.3.5.12340
not a valid field line!
''');

      expect(
        () => parseDbdFile(file, '3.3.5.12340'),
        throwsA(isA<FormatException>()),
      );
    });

    test('throws when a target field has no column definition', () {
      final dbd = DbdFile('Example')
        ..columns['ID'] = ColumnDef(type: 'int', name: 'ID')
        ..targetFields.add(FieldDef(name: 'Missing'));

      expect(() => buildFormatString(dbd), throwsA(isA<FormatException>()));
    });

    test('maps WoWDBDefs integer widths and signedness to format chars', () {
      final dbd = DbdFile('Widths');
      for (final name in [
        'S8',
        'U8',
        'S16',
        'U16',
        'S32',
        'U32',
        'S64',
        'U64',
        'UIntColumn',
        'FloatValue',
        'StringValue',
        'Name_lang',
      ]) {
        dbd.columns[name] = ColumnDef(
          type: switch (name) {
            'UIntColumn' => 'uint',
            'FloatValue' => 'float',
            'StringValue' => 'string',
            'Name_lang' => 'locstring',
            _ => 'int',
          },
          name: name,
        );
      }
      dbd.targetFields.addAll([
        FieldDef(name: 'S8', size: '8'),
        FieldDef(name: 'U8', size: 'u8'),
        FieldDef(name: 'S16', size: '16'),
        FieldDef(name: 'U16', size: 'u16'),
        FieldDef(name: 'S32', size: '32'),
        FieldDef(name: 'U32', size: 'u32'),
        FieldDef(name: 'S64', size: '64'),
        FieldDef(name: 'U64', size: 'u64'),
        FieldDef(name: 'UIntColumn'),
        FieldDef(name: 'FloatValue'),
        FieldDef(name: 'StringValue'),
        FieldDef(name: 'Name_lang'),
      ]);

      expect(buildFormatString(dbd), equals('BbhHiuqQufs${'s' * 16}i'));
    });

    test('categorizes lowercase gt tables into gt directory', () {
      expect(categorizeDbc('gtCombatRatings'), equals('gt'));
    });

    test('parses CLI options', () {
      final config = GeneratorConfig.fromArgs([
        '--build',
        '3.3.5.12340',
        '--dbc',
        '/tmp/dbc',
        '--wowdbdefs',
        '/tmp/WoWDBDefs/definitions',
        '--out',
        '/tmp/out',
      ]);

      expect(config.targetVersion, equals('3.3.5.12340'));
      expect(config.dbcPath.path, equals('/tmp/dbc'));
      expect(config.wowDBDefsPath.path, equals('/tmp/WoWDBDefs/definitions'));
      expect(config.outputPath.path, equals('/tmp/out'));
    });
  });
}
