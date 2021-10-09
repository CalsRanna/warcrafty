const t = require("../../lib/types");

module.exports = {
  ID: t.int32le,
  Name: t.string,
  FileName: t.string,
  AreaEffectSize: t.float32le,
  Scale: t.float32le,
  MinAllowdScale: t.float32le,
  MaxAllowdScale: t.float32le,
};
