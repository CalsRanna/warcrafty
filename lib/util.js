function snake(str) {
  return str
    .replace("_", "")
    .replace("POI", "Poi")
    .replace("GM", "Gm")
    .replace("NPC", "Npc")
    .replace("OCT", "Oct")
    .replace("LFG", "Lfg")
    .replace("HP", "Hp")
    .replace("MP", "Mp")
    .replace("XP", "Xp")
    .replace("UI", "Ui")
    .replace("WMO", "Wmo")
    .replace("WOW", "Wow")
    .replace(/(?:^\w|[A-Z]|\b\w)/g, function (word, index) {
      return index === 0 ? word.toLowerCase() : `-${word.toLowerCase()}`;
    })
    .replace(/\s+/g, "");
}

function camelize(str) {
  return str
    .replace(/-/g, " ")
    .replace(/(?:^\w|[A-Z]|\b\w)/g, function (word, index) {
      return index === 0 ? word.toLowerCase() : word.toUpperCase();
    })
    .replace(/\s+/g, "")
    .replace("Poi", "POI")
    .replace("POInt", "Point")
    .replace("Gm", "GM")
    .replace("gM", "gm")
    .replace("Npc", "NPC")
    .replace("Oct", "OCT")
    .replace("Lfg", "LFG")
    .replace("Hp", "HP")
    .replace("Mp", "MP")
    .replace("Xp", "XP")
    .replace("Ui", "UI")
    .replace("Wmo", "WMO")
    .replace("Wow", "WOW");
}

exports.snake = snake;
exports.camelize = camelize;
