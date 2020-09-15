const t = require("../lib/types");

module.exports = {
  id: t.int32le,
  parent: t.int32le,
  nameLangEnUS: t.string,
  nameLangEnGB: t.string,
  nameLangDeDE: t.string,
  nameLangEnCN: t.string,
  nameLangZhCN: t.string,
  nameLangEnTW: t.string,
  nameLangZhTW: t.string,
  nameLangEsES: t.string,
  nameLangEsMX: t.string,
  nameLangKoKR: t.string,
  nameLangFrFR: t.string,
  nameLangRuRU: t.string,
  nameLangPtPT: t.string,
  nameLangPtBR: t.string,
  nameLangItIT: t.string,
  nameLangUnk: t.string,
  nameLangMask: t.int32le,
  UiOrder: t.int32le,
};
