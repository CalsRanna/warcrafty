import 'package:warcrafty/warcrafty.dart';

void main() {
  var loader = DbcLoader.loadFromPath(
    'Achievement.dbc',
    Definitions.achievement.format,
  );

  for (var record in loader.records) {
    print(record.toMap());
  }
}
