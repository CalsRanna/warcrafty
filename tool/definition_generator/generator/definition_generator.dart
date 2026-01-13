import '../config.dart';
import '../models/models.dart';
import '../utils/naming.dart';

/// 生成 Dart 定义代码
String generateDartDefinition(DbdFile dbd) {
  final lines = <String>[];

  // 导入
  lines.add("import 'package:warcrafty/src/internal/field.dart';");
  lines.add("import 'package:warcrafty/src/internal/schema.dart';");

  // 检查是否需要 locale_fields
  var hasLocstring = false;
  for (final f in dbd.targetFields) {
    final col = dbd.columns[f.name];
    if (col != null && col.type == 'locstring') {
      hasLocstring = true;
      break;
    }
  }

  if (hasLocstring) {
    lines.add("import 'package:warcrafty/src/internal/locale_field.dart';");
  }

  lines.add('');
  lines.add('/// ${dbd.name} 结构定义');
  lines.add('///');
  lines.add('/// 基于 WoWDBDefs 定义，版本 $targetVersion');

  // 格式字符串
  final formatChars = <String>[];
  for (final f in dbd.targetFields) {
    final (_, char) = getFieldType(dbd, f);
    final count = f.arraySize ?? 1;

    if (char == 'LOCSTRING') {
      formatChars.addAll(List.filled(17, 's'));
    } else {
      formatChars.addAll(List.filled(count, char));
    }
  }
  final formatString = formatChars.join();

  final constOrFinal = hasLocstring ? 'final' : 'const';
  final varName = toCamelCase(dbd.name);
  // 当外层是 const 时，内部不需要 const 关键字；当外层是 final 时，内部需要 const
  final fieldConst = hasLocstring ? 'const ' : '';

  lines.add('$constOrFinal $varName = DbcSchema(');
  lines.add("  name: '${dbd.name}',");
  lines.add("  format: '$formatString',");
  lines.add('  fields: [');

  // 字段定义
  var fieldIndex = 0;
  for (final f in dbd.targetFields) {
    final (fieldType, char) = getFieldType(dbd, f);
    final count = f.arraySize ?? 1;

    if (char == 'LOCSTRING') {
      lines.add(
        "    ...createLocaleFieldsWithFlag($fieldIndex, '${f.name}', '${f.name}'),",
      );
      fieldIndex += 17;
    } else if (count > 1) {
      for (var j = 0; j < count; j++) {
        lines.add(
          "    ${fieldConst}Field(index: $fieldIndex, name: '${f.name}$j', description: '${f.name} $j', type: $fieldType),",
        );
        fieldIndex++;
      }
    } else {
      lines.add(
        "    ${fieldConst}Field(index: $fieldIndex, name: '${f.name}', description: '${f.name}', type: $fieldType),",
      );
      fieldIndex++;
    }
  }

  lines.add('  ],');
  lines.add(');');
  lines.add('');

  return lines.join('\n');
}

/// 获取字段类型
(String, String) getFieldType(DbdFile dbd, FieldDef field) {
  final col = dbd.columns[field.name];

  // $id$ 标记
  if (field.isId) {
    return ('FieldType.id', 'n');
  }

  // 检查字节字段 (<8> 或 <u8>)
  if (field.isByteField) {
    return ('FieldType.uint8', 'b');
  }

  if (col != null) {
    switch (col.type) {
      case 'locstring':
        return ('LOCSTRING', 'LOCSTRING');
      case 'float':
        return ('FieldType.float', 'f');
      case 'string':
        return ('FieldType.string', 's');
      case 'int':
        return ('FieldType.int32', 'i');
    }
  }

  return ('FieldType.int32', 'i');
}
