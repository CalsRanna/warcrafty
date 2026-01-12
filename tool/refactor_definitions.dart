import 'dart:io';

void main() async {
  final dir = Directory('lib/src/definition');
  final files = dir.listSync(recursive: true)
      .whereType<File>()
      .where((f) => f.path.endsWith('.dart') && !f.path.endsWith('definition.dart'));

  for (final file in files) {
    var content = await file.readAsString();

    // 更新导入
    content = content.replaceAll(
      "import 'package:warcrafty/src/core/field_definition.dart';",
      "import 'package:warcrafty/src/schema/field.dart';",
    );
    content = content.replaceAll(
      "import 'package:warcrafty/src/core/structure_definition.dart';",
      "import 'package:warcrafty/src/schema/schema.dart';",
    );
    content = content.replaceAll(
      "import 'package:warcrafty/src/core/field_format.dart';",
      '',
    );
    content = content.replaceAll(
      "import 'package:warcrafty/src/core/locale_fields.dart';",
      "import 'package:warcrafty/src/tools/locale_fields.dart';",
    );

    // 更新类名
    content = content.replaceAll('DbcStructureDefinition', 'DbcSchema');
    content = content.replaceAll('FieldDefinition', 'Field');

    // 更新枚举值
    content = content.replaceAll('FieldType.index', 'FieldType.id');
    content = content.replaceAll('FieldType.bool', 'FieldType.boolean');

    // 更新属性名 format -> type
    content = content.replaceAll(', format: FieldType.', ', type: FieldType.');

    // 清理多余空行
    content = content.replaceAll(RegExp(r'\n\n\n+'), '\n\n');

    await file.writeAsString(content);
    print('Updated: ${file.path}');
  }

  print('Done!');
}
