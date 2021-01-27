const t = require("../lib/types");

module.exports = {
  ID: t.int32le,
  ClassID: t.int32le,
  SubclassID: t.int32le,
  Sound_Override_Subclassid: t.int32le,
  Material: t.int32le,
  DisplayInfoID: t.int32le,
  InventoryType: t.int32le,
  SheatheType: t.int32le,
};
