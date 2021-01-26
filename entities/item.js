const t = require("../lib/types");

module.exports = {
  id: t.int32le,
  class: t.int32le,
  subclass: t.int32le,
  soundOverrideSubclass: t.int32le,
  material: t.int32le,
  displayId: t.int32le,
  inventoryType: t.int32le,
  sheath: t.int32le,
};
