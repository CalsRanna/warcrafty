const t = require("../../types");

module.exports = {
  ID: t.int32le,
  Name: t.string,
  ScriptBody: t.string,
  Flags: t.int32le,
  MIssileCount: t.int32le,
};
