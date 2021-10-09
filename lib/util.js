function camelCase(str) {
  return str
    .replace(/-|_/g, " ")
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
    .replace("Wow", "WOW")
    .replace("XUI", "XUi"); // only for ItemAppearanceXUiCamera.db2
}

function kebabCase(str) {
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

function snakeCase(str) {
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
      return index === 0 ? word.toLowerCase() : `_${word.toLowerCase()}`;
    })
    .replace(/\s+/g, "");
}

function search(array, target) {
  let low = 0;
  let high = array.length - 1;
  let i = 0;
  while (low <= high) {
    let middle = Math.round((low + high) / 2);
    if (target < array[middle].ID) {
      high = middle - 1;
      i += 1;
    } else if (target > array[middle].ID) {
      low = middle + 1;
      i += 1;
    } else {
      return middle;
    }
  }
  return -1;
}

exports.camelCase = camelCase;
exports.kebabCase = kebabCase;
exports.snakeCase = snakeCase;
exports.search = search;
