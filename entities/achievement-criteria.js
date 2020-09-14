const t = require("../lib/types");

module.exports = {
  id: t.LONG,
  achievementId: t.LONG,
  type: t.LONG,
  assetId: t.LONG,
  quantity: t.LONG,
  startEvent: t.LONG,
  startAsset: t.LONG,
  failEvent: t.LONG,
  failAsset: t.LONG,
  descriptionLangEnUS: t.STRING,
  descriptionLangEnGB: t.STRING,
  descriptionLangDeDE: t.STRING,
  descriptionLangEnCN: t.STRING,
  descriptionLangZhCN: t.STRING,
  descriptionLangEnTW: t.STRING,
  descriptionLangZhTW: t.STRING,
  descriptionLangEsES: t.STRING,
  descriptionLangEsMX: t.STRING,
  descriptionLangKoKR: t.STRING,
  descriptionLangFrFR: t.STRING,
  descriptionLangRuRU: t.STRING,
  descriptionLangPtPT: t.STRING,
  descriptionLangPtBR: t.STRING,
  descriptionLangitIT: t.STRING,
  descriptionLangUnk: t.STRING,
  descriptionLangMask: t.FLAGS,
  flags: t.FLAGS,
  timerStartEvent: t.LONG,
  timerAssetId: t.LONG,
  timerTime: t.LONG,
  uiOrder: t.LONG,
};
