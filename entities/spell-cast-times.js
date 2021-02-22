const t = require("../lib/types");

module.exports = {
  ID: t.int32le,
  Base: t.int32le,
  PerLevel: t.int32le,
  Minimum: t.int32le,
};
