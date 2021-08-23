const t = require("../lib/types");

module.exports = {
  ID: t.int32le,
  HonorPoints: t.int32le,
  ArenaPoints: t.int32le,
  ArenaBracket: t.int32le,
  ItemID_1: t.int32le,
  ItemID_2: t.int32le,
  ItemID_3: t.int32le,
  ItemID_4: t.int32le,
  ItemID_5: t.int32le,
  ItemCount_1: t.int32le,
  ItemCount_2: t.int32le,
  ItemCount_3: t.int32le,
  ItemCount_4: t.int32le,
  ItemCount_5: t.int32le,
  RequiredArenaRating: t.int32le,
  ItemPurchaseGroup: t.int32le,
};
