const fs = require("fs");
const assert = require("assert");

const { camelize } = require("../lib/util");
const t = require("../lib/types");
const entities = require("../entities");

function read(fpath) {
  let name = fpath.split("\\").pop().split("/").pop().replace(".dbc", "");
  let entity = entities[camelize(name)];
  let columns = Object.keys(entity);

  let buffer = fs.readFileSync(fpath);

  let signature = buffer.toString("utf8", 0, 4);
  let recordCount = buffer.readInt32LE(4);
  let fieldCount = buffer.readInt32LE(8);
  let recordSize = buffer.readInt32LE(12);
  let stringBlockSize = buffer.readInt32LE(16);
  let stringBlockOffset = 4 * 5 + recordCount * recordSize;

  assert(signature == "WDBC", "Signature validation failed.");
  assert(
    fieldCount == columns.length,
    `Expected ${fieldCount} but ${columns.length} columns provided.`
  );

  let offset = 4 * 5;
  let records = [];

  for (let i = 0; i < recordCount; i++) {
    let record = {};
    for (let j = 0; j < columns.length; j++) {
      switch (entity[columns[j]]) {
        case t.int8:
          record[columns[j]] = buffer.readInt8(offset);
          offset = offset + 1;
          break;
        case t.uint8:
          record[columns[j]] = buffer.readUInt8(offset);
          offset = offset + 1;
          break;
        case t.int32le:
          record[columns[j]] = buffer.readInt32LE(offset);
          offset = offset + 4;
          break;
        case t.uint32le:
          record[columns[j]] = buffer.readUInt32LE(offset);
          offset = offset + 4;
          break;
        case t.float32le:
          // record[columns[j]] = buffer.readFloatLE(offset);
          record[columns[j]] =
            Math.round((buffer.readFloatLE(offset) + Number.EPSILON) * 10000) /
            10000;
          offset = offset + 4;
          break;
        case t.string:
          let start = buffer.readInt32LE(offset) + stringBlockOffset;
          let end = start;
          while (true) {
            let unicode = buffer.readUInt8(end);
            if (unicode == 0) break; // 字符串以0结尾
            end = end + 1;
          }
          record[columns[j]] = buffer.toString("utf8", start, end);
          offset = offset + 4;
          break;
        default:
          throw `Undefined type: "${columns[j]}:${entity[columns[j]]}"`;
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

function write(fpath, dbc) {
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

exports.read = read;
exports.write = write;
