const t = require("../lib/types");

module.exports = {
  ID: t.int32le,
  Duration: t.int32le,
  DurationPerLevel: t.int32le,
  MaxDuration: t.int32le,
};
