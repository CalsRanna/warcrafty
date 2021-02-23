const t = require("../lib/types");

module.exports = {
  ID: t.int32le,
  ModelID: t.int32le,
  SoundID: t.int32le,
  ExtendedDisplayInfoID: t.int32le,
  CreatureModelScale: t.float32le,
  CreatureModelAlpha: t.int32le,
  TextureVariation_1: t.string,
  TextureVariation_2: t.string,
  TextureVariation_3: t.string,
  PortraitTextureName: t.string,
  BloodLevel: t.int32le,
  BloodID: t.int32le,
  NPCSoundID: t.int32le,
  ParticleColorID: t.int32le,
  CreatureGeosetData: t.int32le,
  ObjectEffectPackageID: t.int32le,
};
