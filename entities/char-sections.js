const t = require("../lib/types");

module.exports = {
  id: t.LONG,
  raceId: t.LONG,
  gender: t.BOOL,
  baseSection: t.LONG,
  textureName1: t.STRING,
  textureName2: t.STRING,
  textureName3: t.STRING,
  flags: t.FLAGS,
  variationIndex: t.LONG,
  colorIndex: t.LONG,
};
