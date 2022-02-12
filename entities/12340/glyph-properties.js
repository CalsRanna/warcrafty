const t = require("../../lib/types");

module.exports = {
  ID: t.int32le,
  SpellID: t.int32le,
  GlyphSlotFlags: t.int32le,
  SpellIconID: t.int32le,
};
