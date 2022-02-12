const t = require("../../types");

module.exports = {
  id: t.int32le,
  name: t.string,
  weaponFlags: t.int32le,
  bodyFlags: t.int32le,
  flags: t.int32le,
  fallback: t.int32le,
  behaviorId: t.int32le,
  behaviorTier: t.int32le,
};
