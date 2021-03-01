const t = require("../lib/types");

module.exports = {
  ID: t.int32le,
  Radius: t.float32le,
  RadiusPerLevel: t.float32le,
  RadiusMax: t.float32le,
};
