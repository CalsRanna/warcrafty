const t = require("../lib/types");

module.exports = {
  ID: t.int32le,
  ParentSpellVisualKitID: t.int32le,
  SpellVisualEffectNameID: t.int32le,
  AttachmentID: t.int32le,
  OffsetX: t.float32le,
  OffsetY: t.float32le,
  OffsetZ: t.float32le,
  Yaw: t.float32le,
  Pitch: t.float32le,
  Roll: t.float32le,
};
