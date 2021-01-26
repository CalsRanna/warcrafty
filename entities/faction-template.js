const t = require("../lib/types");

module.exports = {
  id: t.int32le,
  faction: t.int32le,
  flags: t.int32le,
  factionGroup: t.int32le,
  friendGroup: t.int32le,
  enimyGroup: t.int32le,
  enimies1: t.int32le,
  enimies2: t.int32le,
  enimies3: t.int32le,
  enimies4: t.int32le,
  friend1: t.int32le,
  friend2: t.int32le,
  friend3: t.int32le,
  friend4: t.int32le,
};
