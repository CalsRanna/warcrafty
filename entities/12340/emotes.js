const t = require("../../types");

module.exports = {
  ID: t.int32le,
  EmoteSlashCommand: t.string,
  AnimID: t.int32le,
  EmoteFlags: t.int32le,
  EmoteSpecProc: t.int32le,
  EmoteSpecProcParam: t.int32le,
  EventSoundID: t.int32le,
};
