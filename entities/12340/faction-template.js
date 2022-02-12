const t = require("../../types");

module.exports = {
  ID: t.int32le,
  Faction: t.int32le,
  Flags: t.int32le,
  FactionGroup: t.int32le,
  FriendGroup: t.int32le,
  EnemyGroup: t.int32le,
  Enemies_1: t.int32le,
  Enemies_2: t.int32le,
  Enemies_3: t.int32le,
  Enemies_4: t.int32le,
  Friend_1: t.int32le,
  Friend_2: t.int32le,
  Friend_3: t.int32le,
  Friend_4: t.int32le,
};
