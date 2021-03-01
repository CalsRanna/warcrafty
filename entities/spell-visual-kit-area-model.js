const t = require("../lib/types");

module.exports = {
  ID: t.int32le,
  Name: t.string,
  EnumID: t.int32le,
};
