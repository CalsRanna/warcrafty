const t = require("../../types");

module.exports = {
  ID: t.uint32le,
  SpellID: t.uint32le,
  CooldownMSec: t.uint32le,
  CategoryCooldownMSec: t.uint32le,
  Charges: t.uint32le,
  SpellCateoryID: t.uint32le,
  ChrSpecializationID: t.uint32le,
  LegacySlotIndex: t.uint32le,
  TriggerType: t.uint32le,
  RelationshipData: t.uint32le,
};
