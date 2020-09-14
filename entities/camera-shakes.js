const t = require("../lib/types");

module.exports = {
  id: t.LONG,
  shakeType: t.BOOL,
  direction: t.FLAGS,
  amplitude: t.FLOAT,
  frequency: t.FLOAT,
  duration: t.FLOAT,
  phase: t.FLOAT,
  coefficient: t.FLOAT,
};
