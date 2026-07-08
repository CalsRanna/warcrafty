import 'dart:io';

/// 默认目标版本: 巫妖王之怒最后补丁
const defaultTargetVersion = '3.3.5.12340';

/// 生成器配置。
final class GeneratorConfig {
  final String targetVersion;
  final Directory dbcPath;
  final Directory outputPath;
  final Directory wowDBDefsPath;

  const GeneratorConfig({
    required this.targetVersion,
    required this.dbcPath,
    required this.outputPath,
    required this.wowDBDefsPath,
  });

  factory GeneratorConfig.defaults() {
    final home = Platform.environment['HOME'] ?? '~';
    return GeneratorConfig(
      targetVersion: defaultTargetVersion,
      dbcPath: Directory('$home/Code/warcrafty/dbc'),
      outputPath: Directory('$home/Code/warcrafty/lib/src/definition'),
      wowDBDefsPath: Directory('$home/Code/WoWDBDefs/definitions'),
    );
  }

  factory GeneratorConfig.fromArgs(List<String> args) {
    var config = GeneratorConfig.defaults();

    String readValue(int index, String option) {
      if (index + 1 >= args.length || args[index + 1].startsWith('--')) {
        throw ArgumentError('Missing value for $option');
      }
      return args[index + 1];
    }

    for (var i = 0; i < args.length; i++) {
      final arg = args[i];
      switch (arg) {
        case '--build':
        case '--target-version':
          config = config.copyWith(targetVersion: readValue(i, arg));
          i++;
        case '--dbc':
          config = config.copyWith(dbcPath: Directory(readValue(i, arg)));
          i++;
        case '--out':
          config = config.copyWith(outputPath: Directory(readValue(i, arg)));
          i++;
        case '--wowdbdefs':
          config = config.copyWith(wowDBDefsPath: Directory(readValue(i, arg)));
          i++;
        case '--help':
        case '-h':
          throw const UsageRequested();
        default:
          throw ArgumentError('Unknown option: $arg');
      }
    }

    return config;
  }

  GeneratorConfig copyWith({
    String? targetVersion,
    Directory? dbcPath,
    Directory? outputPath,
    Directory? wowDBDefsPath,
  }) {
    return GeneratorConfig(
      targetVersion: targetVersion ?? this.targetVersion,
      dbcPath: dbcPath ?? this.dbcPath,
      outputPath: outputPath ?? this.outputPath,
      wowDBDefsPath: wowDBDefsPath ?? this.wowDBDefsPath,
    );
  }
}

final class UsageRequested implements Exception {
  const UsageRequested();
}

String generatorUsage() =>
    '''
Usage:
  dart run tool/definition_generator/main.dart [options]

Options:
  --build, --target-version <version>  Target WoW build version (default: $defaultTargetVersion)
  --dbc <path>                         Directory containing .dbc files
  --wowdbdefs <path>                   WoWDBDefs definitions directory
  --out <path>                         Output directory for generated Dart schemas
  -h, --help                           Show this help
''';

/// 分类规则 (前缀 -> 目录)
const categoryRules = {
  'Achievement': 'achievement',
  'Area': 'area',
  'World': 'area',
  'WMO': 'area',
  'Chr': 'character',
  'Char': 'character',
  'Chat': 'character',
  'Creature': 'creature',
  'Faction': 'faction',
  'GameObject': 'gameobject',
  'GameObjects': 'gameobject',
  'gt': 'gt',
  'Gt': 'gt',
  'Item': 'item',
  'Gem': 'item',
  'Light': 'light',
  'Map': 'map',
  'Dungeon': 'map',
  'LFG': 'map',
  'Quest': 'quest',
  'Skill': 'skill',
  'Sound': 'sound',
  'Music': 'sound',
  'Ambient': 'sound',
  'Spell': 'spell',
  'Glyph': 'spell',
  'Totem': 'spell',
  'Talent': 'talent',
  'Taxi': 'taxi',
  'Vehicle': 'vehicle',
};

/// 确定分类
String categorizeDbc(String name) {
  for (final entry in categoryRules.entries) {
    if (name.startsWith(entry.key)) {
      return entry.value;
    }
  }
  return 'misc';
}
