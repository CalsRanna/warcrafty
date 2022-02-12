const t = require("../../types");

module.exports = {
  ID: t.int32le,
  Charges: t.int32le,
  Effect_1: t.int32le,
  Effect_2: t.int32le,
  Effect_3: t.int32le,
  EffectPointsMin_1: t.int32le,
  EffectPointsMin_2: t.int32le,
  EffectPointsMin_3: t.int32le,
  EffectPointsMax_1: t.int32le,
  EffectPointsMax_2: t.int32le,
  EffectPointsMax_3: t.int32le,
  EffectArg_1: t.int32le,
  EffectArg_2: t.int32le,
  EffectArg_3: t.int32le,
  Name_Lang_enUS: t.string,
  Name_Lang_enGB: t.string,
  Name_Lang_koKR: t.string,
  Name_Lang_frFR: t.string,
  Name_Lang_zhCN: t.string,
  Name_Lang_enCN: t.string,
  Name_Lang_deDE: t.string,
  Name_Lang_enTW: t.string,
  Name_Lang_zhTW: t.string,
  Name_Lang_esES: t.string,
  Name_Lang_esMX: t.string,
  Name_Lang_ruRU: t.string,
  Name_Lang_ptPT: t.string,
  Name_Lang_ptBR: t.string,
  Name_Lang_itIT: t.string,
  Name_Lang_Unk: t.string,
  Name_Lang_Mask: t.int32le,
  ItemVisual: t.int32le,
  Flags: t.int32le,
  Src_ItemID: t.int32le,
  Condition_Id: t.int32le,
  RequiredSkillID: t.int32le,
  RequiredSkillRank: t.int32le,
  MinLevel: t.int32le,
};