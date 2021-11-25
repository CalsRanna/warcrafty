const t = require("../../types");

module.exports = {
  ID: t.int32le,
  Flags: t.int32le,
  ModelName: t.string,
  SizeClass: t.int32le,
  ModelScale: t.float32le,
  BloodID: t.int32le,
  FootprintTextureID: t.int32le,
  FootprintTextureLength: t.float32le,
  FootprintTextureWidth: t.float32le,
  FootprintParticleScale: t.float32le,
  FoleyMaterialID: t.int32le,
  FootstepShakeSize: t.int32le,
  DeathThudShakeSize: t.int32le,
  SoundID: t.int32le,
  CollisionWidth: t.float32le,
  CollisionHeight: t.float32le,
  MountHeight: t.float32le,
  GeoBoxMinX: t.float32le,
  GeoBoxMinY: t.float32le,
  GeoBoxMinZ: t.float32le,
  GeoBoxMaxX: t.float32le,
  GeoBoxMaxY: t.float32le,
  GeoBoxMaxZ: t.float32le,
  WorldEffectScale: t.float32le,
  AttachedEffectScale: t.float32le,
  MissileCollisionRadius: t.float32le,
  MissileCollisionPush: t.float32le,
  MissileCollisionRaise: t.float32le,
};
