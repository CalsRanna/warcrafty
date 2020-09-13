const fs = require("fs");
const assert = require("assert");

const t = require("../lib/types");
const entities = require("../entities");

function camelize(str) {
  return str
    .replace("_", "")
    .replace(/(?:^\w|[A-Z]|\b\w)/g, function (word, index) {
      return index === 0 ? word.toLowerCase() : word.toUpperCase();
    })
    .replace(/\s+/g, "");
}

function readDBC(fpath) {
  let name = fpath.split("\\").pop().split("/").pop().replace(".dbc", "");
  let entity = entities[camelize(name)];
  let columns = Object.keys(entity);

  let buffer = fs.readFileSync(fpath);

  //Check dbc header
  assert(buffer.readInt32LE(0) == 1128416343, "Not a dbc file");

  let signature = buffer.toString("utf8", 0, 4);
  let recordCount = buffer.readInt32LE(4);
  let fieldCount = buffer.readInt32LE(8);
  let recordSize = buffer.readInt32LE(12);
  let stringBlockSize = buffer.readInt32LE(16);
  let stringBlockOffset = 4 * 5 + recordCount * recordSize;

  //Check lengths match
  assert(
    fieldCount == columns.length,
    `Incorrect size in dbc: ${fieldCount}, ${columns.length} for type ${name}`
  );

  let offset = 4 * 5;
  let records = [];

  for (let i = 0; i < recordCount; i++) {
    let record = {};
    for (let j = 0; j < columns.length; j++) {
      switch (entity[columns[j]]) {
        case t.NONE:
          record[columns[j]] = null;
          offset = offset + 4;
          break;
        case t.LONG:
          record[columns[j]] = buffer.readInt32LE(offset);
          offset = offset + 4;
          break;
        case t.FLOAT:
          record[columns[j]] = buffer.readFloatLE(offset);
          offset = offset + 4;
          break;
        case t.BOOL:
          record[columns[j]] = buffer.readInt32LE(offset);
          offset = offset + 4;
          break;
        case t.FLAGS:
          record[columns[j]] = buffer.readInt32LE(offset);
          offset = offset + 4;
          break;
        case t.BYTE:
          record[columns[j]] = buffer.readInt8(offset);
          offset = offset + 1;
          break;
        case t.STRING:
          let start = buffer.readInt32LE(offset) + stringBlockOffset;
          let end = start;
          while (true) {
            let kr = buffer.readUInt8(end);
            if (kr == 0) break; // 字符串以0结尾
            end = end + 1;
          }
          record[columns[j]] = buffer.toString("utf8", start, end);
          offset = offset + 4;
          break;
        default:
          throw `Wrong type ${columns[j]}`;
          break;
      }
    }
    records.push(record);
  }
  return {
    signature: signature,
    recordCount: recordCount,
    fieldCount: fieldCount,
    recordSize: recordSize,
    stringBlockSize: stringBlockSize,
    stringBlockOffset: stringBlockOffset,
    records: records,
  };
}

function writeDBC(fpath, dbc) {
  let t = dbc.t;

  let buf = Buffer.alloc(dbc.stringBlockOffset + dbc.stringBlockSize);
  buf.writeInt32LE(1128416343, 0);
  buf.writeInt32LE(dbc.recordCount, 4);
  buf.writeInt32LE(dbc.fieldCount, 8);
  buf.writeInt32LE(dbc.recordSize, 12);
  buf.writeInt32LE(dbc.stringBlockSize, 16);

  let strings = [];
  let stringBlockSize = 0;

  for (let record in dbc.records) {
    let nulls = 0;
    for (let i = 0; i < dbc.recordCount; i++) {
      let type = t[i];
      let offset = record * t.length * 4 + i * 4 + 20;
      if (type == t.NONE) {
        buf.writeUInt32LE(0, offset);
        nulls++;
        continue;
      }

      let data = dbc.record[record][i - nulls];
      if (type == t.LONG) buf.writeInt32LE(data, offset);
      else if (type == t.FLOAT) buf.writeFloatLE(data, offset);
      else if (type == t.BOOL)
        if (data) buf.writeUInt32LE(1, offset);
        else buf.writeUInt32LE(0, offset);
      else if (type == t.STRING) {
        buf.writeInt32LE(stringBlockSize + 1, offset);
        strings.push(data);
        stringBlockSize += data.length + 1;
      } else if (type == t.FLAGS) buf.writeInt32LE(data, offset);
      else assert(false, "Fuck " + type);
    }
  }

  if (strings.length == 0) {
    buf.writeInt32LE(0, 16);
  } else {
    buf.writeUInt32LE(stringBlockSize + 1, 16);

    let string_buf = Buffer.alloc(stringBlockSize + 1);
    let cur_string_off = 1;
    for (let string of strings) {
      for (let i in string) {
        let cc = string.charCodeAt(i);
        string_buf.writeUInt8(cc, cur_string_off + parseInt(i));
      }
      string_buf.writeUInt8(0, cur_string_off + string.length);
      cur_string_off += string.length + 1;
    }
    buf = Buffer.concat([buf, string_buf]);
  }
  fs.writeFileSync(fpath, buf);
}

exports.read = readDBC;
exports.write = writeDBC;
