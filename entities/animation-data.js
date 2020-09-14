const t = require("../lib/types");

module.exports = {
  id: t.LONG,
  name: t.STRING,
  weaponFlags: t.FLAGS,
  bodyFlags: t.FLAGS,
  flags: t.FLAGS,
  fallBack: t.LONG,
  behaviorId: t.LONG,
  behaviorTier: t.LONG,
};
