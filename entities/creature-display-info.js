const t = require("../lib/types");

module.exports = {
  id: t.LONG,
  modelId: t.LONG,
  soundId: t.LONG,
  extendedDisplayInfoId: t.LONG,
  creatureModelScale: t.FLOAT,
  creatureModelAlpha: t.LONG,
  textureVariation1: t.STRING,
  textureVariation2: t.STRING,
  textureVariation3: t.STRING,
  portraitTextureName: t.STRING,
  bloodLevel: t.LONG,
  bloodId: t.LONG,
  npcSoundId: t.LONG,
  particleColorId: t.FLAGS,
  creatureGeosetData: t.LONG,
  objectEffectPackageId: t.LONG,
};
