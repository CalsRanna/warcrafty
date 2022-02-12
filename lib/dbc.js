const fs = require("fs");
const t = require("../types");
const entities = require("../entities/12340");
const { camelCase, snakeCase } = require("change-case");

function read(fpath) {
  return new Promise((resolve, reject) => {
    let name = fpath.split("\\").pop().split("/").pop().replace(".dbc", "");
    let entity = entities[camelCase(name)];
    let keys = Object.keys(entity);

    fs.readFile(fpath, (error, buffer) => {
      if (error) {
        reject(error);
      } else {
        let signature = buffer.toString("utf8", 0, 4);
        let recordCount = buffer.readInt32LE(4);
        let fieldCount = buffer.readInt32LE(8);
        let recordSize = buffer.readInt32LE(12);
        let stringBlockSize = buffer.readInt32LE(16);

        if (signature != "WDBC") {
          reject("Signature validation failed.");
        }
        if (fieldCount != keys.length) {
          reject(`Expected ${fieldCount} but ${keys.length} keys provided.`);
        }

        let offset = 4 * 5;
        let stringBlockOffset = 4 * 5 + recordCount * recordSize;
        let records = [];

        for (let i = 0; i < recordCount; i++) {
          let record = {};
          for (let key of keys) {
            switch (entity[key]) {
              case t.int8:
                record[key] = buffer.readInt8(offset);
                offset = offset + 1;
                break;
              case t.uint8:
                record[key] = buffer.readUInt8(offset);
                offset = offset + 1;
                break;
              case t.int32le:
                record[key] = buffer.readInt32LE(offset);
                offset = offset + 4;
                break;
              case t.uint32le:
                record[key] = buffer.readUInt32LE(offset);
                offset = offset + 4;
                break;
              case t.float32le:
                record[key] =
                  Math.round((buffer.readFloatLE(offset) + Number.EPSILON) * 10000) / 10000;
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
                record[key] = buffer.toString("utf8", start, end);
                offset = offset + 4;
                break;
              default:
                reject(`Undefined type: "${key}:${entity[key]}"`);
                break;
            }
          }
          records.push(record);
        }
        resolve({
          signature: signature,
          recordCount: recordCount,
          fieldCount: fieldCount,
          recordSize: recordSize,
          stringBlockSize: stringBlockSize,
          records: records,
        });
      }
    });
  });
}

function write(fpath, records) {
  return new Promise((resolve, reject) => {
    let name = fpath.split("\\").pop().split("/").pop().replace(".dbc", "");
    let entity = entities[camelCase(name)];
    let keys = Object.keys(entity);

    let recordCount = records.length;
    let fieldCount = keys.length;
    let recordSize = 0;

    for (let key of keys) {
      switch (entity[key]) {
        case t.int8:
          recordSize = recordSize + 1;
          break;
        case t.uint8:
          recordSize = recordSize + 1;
          break;
        case t.int32le:
          recordSize = recordSize + 4;
          break;
        case t.uint32le:
          recordSize = recordSize + 4;
          break;
        case t.float32le:
          recordSize = recordSize + 4;
          break;
        case t.string:
          recordSize = recordSize + 4;
          break;
        default:
          reject(`Undefined type: "${key}:${entity[key]}"`);
          break;
      }
    }

    let bufferSize = recordCount * recordSize + 4 * 5;

    let stringBufferSize = 0;
    let uniqueStrings = [];
    for (let record of records) {
      for (let key of keys) {
        let string = record[key];
        if (entity[key] == t.string && uniqueStrings.indexOf(string) == -1) {
          stringBufferSize = stringBufferSize + Buffer.byteLength(string);
          stringBufferSize = stringBufferSize + 1;
          uniqueStrings.push(string);
        }
      }
    }

    let buffer = Buffer.alloc(bufferSize);
    let stringBuffer = Buffer.alloc(stringBufferSize);

    buffer.writeInt32LE(1128416343, 0);
    buffer.writeInt32LE(recordCount, 4);
    buffer.writeInt32LE(fieldCount, 8);
    buffer.writeInt32LE(recordSize, 12);
    buffer.writeInt32LE(stringBufferSize, 16);

    let offset = 20;
    let stringOffset = 0;
    let strings = [];
    let offsets = [];

    for (let record of records) {
      for (let key of keys) {
        switch (entity[key]) {
          case t.int8:
            buffer.writeUInt8(record[key], offset);
            offset = offset + 1;
            break;
          case t.uint8:
            buffer.writeUInt8(record[key], offset);
            offset = offset + 1;
            break;
          case t.int32le:
            buffer.writeInt32LE(record[key], offset);
            offset = offset + 4;
            break;
          case t.uint32le:
            buffer.writeUInt32LE(record[key], offset);
            offset = offset + 4;
            break;
          case t.float32le:
            let value = (Math.round(record[key] + Number.EPSILON) * 1000) / 1000;
            buffer.writeFloatLE(value, offset);
            offset = offset + 4;
            break;
          case t.string:
            let index = strings.indexOf(record[key]);
            if (index >= 0) {
              buffer.writeInt32LE(offsets[index], offset);
              offset = offset + 4;
            } else {
              if (record[key] == "") {
                buffer.writeUInt32LE(0, offset);
                stringBuffer.writeUInt8(0, stringOffset);

                strings.push(record[key]);
                offsets.push(stringOffset);

                stringOffset = stringOffset + 1;
              } else {
                buffer.writeInt32LE(stringOffset, offset);
                let length = stringBuffer.write(record[key], stringOffset);
                stringBuffer.writeUInt8(0, stringOffset + length);

                strings.push(record[key]);
                offsets.push(stringOffset);

                stringOffset = stringOffset + length + 1;
              }
              offset = offset + 4;
            }
            break;
          default:
            reject(`Undefined type: "${key}:${entity[key]}"`);
            break;
        }
      }
    }
    fs.writeFile(fpath, Buffer.concat([buffer, stringBuffer]), (error) => {
      if (error) {
        reject(error);
      } else {
        resolve();
      }
    });
  });
}

function toSql(fpath, database = "foxy") {
  let name = fpath.split("\\").pop().split("/").pop().replace(".dbc", "");
  let entity = entities[camelCase(name)];
  let keys = Object.keys(entity);
  let sql = "";

  for (let key of keys) {
    switch (entity[key]) {
      case t.int8:
        sql += `\`${key}\` TINYINT NOT NULL DEFAULT '0',`;
        break;
      case t.uint8:
        sql += `\`${key}\` TINYINT UNSIGNED NOT NULL DEFAULT '0',`;
        break;
      case t.int32le:
        sql += `\`${key}\` INT NOT NULL DEFAULT '0',`;
        break;
      case t.uint32le:
        sql += `\`${key}\` INT UNSIGNED NOT NULL DEFAULT '0',`;
        break;
      case t.float32le:
        sql += `\`${key}\` FLOAT NOT NULL DEFAULT '0',`;
        break;
      case t.string:
        sql += `\`${key}\` TEXT,`;
        break;
      default:
        reject(`Undefined type: "${key}:${entity[key]}"`);
        break;
    }
  }

  return `CREATE TABLE IF NOT EXISTS \`${database}\`.\`dbc_${snakeCase(
    name
  )}\` (${sql} PRIMARY KEY(\`${keys[0]}\`)) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;`;
}

exports.read = read;
exports.write = write;
exports.toSql = toSql;
