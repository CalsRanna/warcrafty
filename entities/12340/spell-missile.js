const t = require("../../lib/types");

module.exports = {
  ID: t.int32le,
  Flags: t.int32le,
  DefaultPitchMin: t.float32le,
  DefaultPitchMax: t.float32le,
  DefaultSpeedMin: t.float32le,
  DefaultSpeedMax: t.float32le,
  RandomizeFacingMin: t.float32le,
  RandomizeFacingMax: t.float32le,
  RandomizePitchMin: t.float32le,
  RandomizePitchMax: t.float32le,
  RandomizeSpeedMin: t.float32le,
  RandomizeSpeedMax: t.float32le,
  Gravity: t.float32le,
  MaxDuration: t.float32le,
  CollisionRadius: t.float32le,
};
