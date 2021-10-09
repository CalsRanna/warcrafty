const t = require("../../lib/types");

module.exports = {
  ID: t.int32le,
  ModelName: t.string,
  Sound_1: t.int32le,
  Sound_2: t.int32le,
  Sound_3: t.int32le,
  Sound_4: t.int32le,
  Sound_5: t.int32le,
  Sound_6: t.int32le,
  Sound_7: t.int32le,
  Sound_8: t.int32le,
  Sound_9: t.int32le,
  Sound_10: t.int32le,
  GeoBoxMinX: t.float32le,
  GeoBoxMinY: t.float32le,
  GeoBoxMinZ: t.float32le,
  GeoBoxMaxX: t.float32le,
  GeoBoxMaxY: t.float32le,
  GeoBoxMaxZ: t.float32le,
  ObjectEffectPackageID: t.int32le,
};
