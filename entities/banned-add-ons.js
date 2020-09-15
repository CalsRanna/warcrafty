const t = require("../lib/types");

module.exports = {
  id: t.int32le,
  nameMD51: t.uint32le,
  nameMD52: t.uint32le,
  nameMD53: t.uint32le,
  nameMD54: t.uint32le,
  versionMD51: t.uint32le,
  versionMD52: t.uint32le,
  versionMD53: t.uint32le,
  versionMD54: t.uint32le,
  lastModified: t.uint32le,
  flags: t.int32le,
};
