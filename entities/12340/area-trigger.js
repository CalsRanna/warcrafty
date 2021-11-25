const t = require("../../types");

module.exports = {
  id: t.int32le,
  continentId: t.int32le,
  x: t.float32le,
  y: t.float32le,
  z: t.float32le,
  radius: t.float32le,
  boxLength: t.float32le,
  boxWidth: t.float32le,
  boxHeight: t.float32le,
  boxYaw: t.float32le,
};
