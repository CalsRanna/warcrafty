const t = require("../lib/types");

module.exports = {
  ID: t.int32le,
  LoadAnimation: t.string,
  HoldAnimation: t.string,
};
