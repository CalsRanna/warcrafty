import '../models/models.dart';
import '../utils/naming.dart';

/// 生成 Dart 定义代码
String generateDartDefinition(DbdFile dbd, String targetVersion) {
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
  final formatString = buildFormatString(dbd);

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

/// 根据 DBD 字段构建 warcrafty 格式字符串。
String buildFormatString(DbdFile dbd) {
  final formatChars = <String>[];
  for (final f in dbd.targetFields) {
    final (_, char) = getFieldType(dbd, f);
    final count = f.arraySize ?? 1;

    if (char == 'LOCSTRING') {
      // WDBC locstring = 16 个语言字符串偏移 (s) + 1 个标志位 (i)
      // 必须与 createLocaleFieldsWithFlag 生成的字段定义保持一致
      formatChars.addAll(List.filled(16, 's'));
      formatChars.add('i');
    } else {
      formatChars.addAll(List.filled(count, char));
    }
  }
  return formatChars.join();
}

/// 获取字段类型
(String, String) getFieldType(DbdFile dbd, FieldDef field) {
  final col = dbd.columns[field.name];
  if (col == null) {
    throw FormatException('Unknown column "${field.name}" in ${dbd.name}');
  }

  // $id$ 标记。warcrafty 当前只支持 inline 32-bit ID 作为索引字段。
  if (field.isId) {
    final width = field.intWidth ?? 32;
    if (width != 32 || field.isUnsigned) {
      throw UnsupportedError(
        'Unsupported ID width <${field.size}> for ${dbd.name}.${field.name}',
      );
    }
    return ('FieldType.id', 'n');
  }

  switch (col.type) {
    case 'locstring':
      return ('LOCSTRING', 'LOCSTRING');
    case 'float':
      return ('FieldType.float', 'f');
    case 'string':
      return ('FieldType.string', 's');
    case 'int':
    case 'uint':
      return _getIntegerFieldType(dbd, field, col.type == 'uint');
  }

  throw UnsupportedError('Unsupported column type ${col.type} in ${dbd.name}');
}

(String, String) _getIntegerFieldType(
  DbdFile dbd,
  FieldDef field,
  bool unsignedColumn,
) {
  final width = field.intWidth ?? 32;
  final unsigned = field.isUnsigned || unsignedColumn;

  return switch ((width, unsigned)) {
    (8, false) => ('FieldType.int8', 'B'),
    (8, true) => ('FieldType.uint8', 'b'),
    (16, false) => ('FieldType.int16', 'h'),
    (16, true) => ('FieldType.uint16', 'H'),
    (32, false) => ('FieldType.int32', 'i'),
    (32, true) => ('FieldType.uint32', 'u'),
    (64, false) => ('FieldType.int64', 'q'),
    (64, true) => ('FieldType.uint64', 'Q'),
    _ => throw UnsupportedError(
      'Unsupported integer width <${field.size}> in ${dbd.name}.${field.name}',
    ),
  };
}
