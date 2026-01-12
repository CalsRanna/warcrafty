/// Warcrafty DBC Library
///
/// 一个专注于 DBC 文件读写的高性能 Dart 库。
///
/// ## 功能
///
/// - 高效的 DBC 文件读取和写入
/// - 格式字符串驱动的灵活解析
/// - 预建字符串索引 (O(1) 查找)
/// - ID 索引构建和二分搜索
/// - 与 AzerothCore 格式字符串兼容
///
/// ## 快速开始
///
/// ```dart
/// import 'package:warcrafty/warcrafty.dart';
///
/// void main() {
///   // 读取 DBC 文件
///   final loader = DbcLoader.loadFromPath('chr-races.dbc', 'niiiisssssssssssssssss');
///
///   // 遍历所有记录
///   for (final record in loader.records) {
///     print('ID: ${record.getInt(0)}, Name: ${record.getString(5)}');
///   }
///
///   // 使用索引查找
///   final indexBuilder = DbcIndexBuilder.fromLoader(loader, (record) => record.toMap());
///   final race = indexBuilder.lookup(1);
///
///   loader.close();
///
///   // 写入 DBC 文件
///   DbcWriter.writeToPath('output.dbc', 'niiiiss', [
///     [1, 0, 84, 0, 0, 'Human', '人类'],
///   ]);
/// }
/// ```
library;

export 'src/core/dbc_loader.dart' show DbcLoader, DbcRecord;
export 'src/core/dbc_writer.dart' show DbcWriter;
export 'src/core/field_format.dart' show DbcFieldFormat;
export 'src/core/header.dart' show DbcHeader;
export 'src/handlers/offset_calculator.dart' show FieldOffsetCalculator;
export 'src/handlers/string_handler.dart'
    show StringBlockHandler, StringTableBuilder;
export 'src/index/binary_search.dart' show BinarySearch, BinarySearchResult;
export 'src/index/index_builder.dart' show DbcIndexBuilder;
export 'src/utils/endian_converter.dart' show EndianConverter;
export 'src/utils/exceptions.dart'
    show
        DbcException,
        InvalidSignatureException,
        FormatException,
        FieldIndexOutOfRangeException,
        RecordIndexOutOfRangeException,
        FileReadException,
        WriteException;
export 'src/formats/index.dart'
    show
        FieldDefinition,
        FieldDefinitionBuilder,
        DbcStructureDefinition,
        DbcStructureDefinitionCollection,
        DbcFormats,
        DbcFormatStrings,
        DbcStructures;
