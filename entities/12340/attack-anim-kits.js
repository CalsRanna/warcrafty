const t = require("../../lib/types");

module.exports = {
  id: t.int32le,
  animation: t.int32le,
  type: t.int32le,
  flags: t.int32le,
  unk_4: t.int32le,
};
