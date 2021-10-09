const t = require("../../lib/types");

module.exports = {
  IconFileDataID: t.uint32le,
  ClassID: t.uint32le,
  SubclassID: t.uint32le,
  Sound_Override_SubclassID: t.uint32le,
  Material: t.uint32le,
  InventoryType: t.uint32le,
  SheatheType: t.uint32le,
  ItemGroupSoundsID: t.uint32le,
};
