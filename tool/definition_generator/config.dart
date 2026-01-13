import 'dart:io';

/// 目标版本: 巫妖王之怒最后补丁
const targetVersion = '3.3.5.12340';

/// 路径配置
final home = Platform.environment['HOME'] ?? '~';
final dbcPath = Directory('$home/Code/warcrafty/dbc');
final outputPath = Directory('$home/Code/warcrafty/lib/src/definition');
final wowDBDefsPath = Directory('$home/Code/WoWDBDefs/definitions');

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
