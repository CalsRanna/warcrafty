const t = require("../../lib/types");

module.exports = {
  ID: t.int32le,
  Parent: t.int32le,
  Name_Lang_enUS: t.string,
  Name_Lang_enGB: t.string,
  Name_Lang_deDE: t.string,
  Name_Lang_enCN: t.string,
  Name_Lang_zhCN: t.string,
  Name_Lang_enTW: t.string,
  Name_Lang_zhTW: t.string,
  Name_Lang_esES: t.string,
  Name_Lang_esMX: t.string,
  Name_Lang_koKR: t.string,
  Name_Lang_frFR: t.string,
  Name_Lang_ruRU: t.string,
  Name_Lang_ptPT: t.string,
  Name_Lang_ptBR: t.string,
  Name_Lang_itIT: t.string,
  Name_Lang_Unk: t.string,
  Name_Lang_Mask: t.int32le,
  Ui_Order: t.int32le,
};
