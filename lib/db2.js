const fs = require("fs");
const iconv = require("iconv-lite");
const { camelCase, kebabCase, snakeCase, search } = require("../lib/util");
const t = require("../lib/types");
const entities = require("../entities/26972");

class DB2 {
  _path = null;
  _name = null;
  _entity = null;
  _keys = [];
  _buffer = null;
  constructor(fpath) {
    this._path = fpath;
    this._name = fpath.split("\\").pop().split("/").pop().replace(".db2", "");
    this._entity = entities[camelCase(this._name)];
    this._keys = Object.keys(this._entity);
    this._buffer = fs.readFileSync(fpath);
  }
  getMagic() {
    return this._buffer.toString("utf8", 0, 4);
  }
  getRecordCount() {
    return this._buffer.readUInt32LE(4);
  }
  getFieldCount() {
    return this._buffer.readUInt32LE(8);
  }
  getRecordSize() {
    return this._buffer.readUInt32LE(12);
  }
  getStringTableSize() {
    return this._buffer.readUInt32LE(16);
  }
  getTableHash() {
    return this._buffer.readUInt32LE(20);
  }
  getLayoutHash() {
    return this._buffer.readUInt32LE(24);
  }
  getMinId() {
    return this._buffer.readUInt32LE(28);
  }
  getMaxId() {
    return this._buffer.readUInt32LE(32);
  }
  getLocale() {
    return this._buffer.readUInt32LE(36);
  }
  getCopyTableSize() {
    return this._buffer.readUInt32LE(40);
  }
  getFlags() {
    return this._buffer.readUInt16LE(44);
  }
  getIdIndex() {
    return this._buffer.readUInt16LE(46);
  }
  getTotalFieldCount() {
    return this._buffer.readUInt32LE(48);
  }
  getBitpackedDataOffset() {
    return this._buffer.readUInt32LE(52);
  }
  getLookupColumnCount() {
    return this._buffer.readUInt32LE(56);
  }
  getOffsetMapOffset() {
    return this._buffer.readUInt32LE(60);
  }
  getIdListSize() {
    return this._buffer.readUInt32LE(64);
  }
  getFieldStorageInfoSize() {
    return this._buffer.readUInt32LE(68);
  }
  getCommonDataSize() {
    return this._buffer.readUInt32LE(72);
  }
  getPalletDataSize() {
    return this._buffer.readUInt32LE(76);
  }
  getRelationshipDataSize() {
    return this._buffer.readUInt32LE(80);
  }
  getFields() {
    let count = this.getFieldCount();
    let offset = 84;
    let fields = [];
    for (let i = 0; i < count; i++) {
      fields.push({
        size: this._buffer.readInt16LE(offset),
        position: this._buffer.readInt16LE(offset + 2),
      });
      offset = offset + 4;
    }
    return fields;
  }
  getRecords() {
    let recordCount = this.getRecordCount();
    let recordSize = this.getRecordSize();
    let fields = this.getFields();
    let offset = 84 + this.getFieldCount() * 4;
    let records = [];
    for (let i = 0; i < recordCount; i++) {
      let record = {};
      for (let i = 0; i < fields.length; i++) {
        let key = this._keys[i];
        let byte = (32 - fields[i].size) / 8;
        switch (byte) {
          case 1:
            record[key] = this._buffer.readUInt8(offset + fields[i].position);
            break;
          case 2:
            record[key] = this._buffer.readUInt16LE(offset + fields[i].position);
            break;
          case 4:
            if (this._entity[key] === t.int32le) {
              record[key] = this._buffer.readInt32LE(offset + fields[i].position);
            } else if (this._entity[key] === t.uint32le) {
              record[key] = this._buffer.readUInt32LE(offset + fields[i].position);
            } else if (this._entity[key] === t.string) {
              record[key] = this._buffer.readUInt32LE(offset + fields[i].position);
            } else {
              record[key] =
                Math.round((this._buffer.readFloatLE(offset) + Number.EPSILON) * 10000) / 10000;
            }
            break;
          default:
            record[key] = null;
            break;
        }
      }
      records.push(record);
      offset += recordSize;
    }
    return records;
  }
  getStringData() {
    let stringTableSize = this.getStringTableSize();
    let offset = 84 + this.getFieldCount() * 4 + this.getRecordCount() * this.getRecordSize();
    let stringData = [];
    for (let i = 0; i < stringTableSize; i++) {
      stringData.push(this._buffer.readUInt8(offset));
      offset += 1;
    }
    return stringData;
  }
  getIdList() {
    let idListSize = this.getIdListSize();
    let offset =
      84 +
      this.getFieldCount() * 4 +
      this.getRecordCount() * this.getRecordSize() +
      this.getStringTableSize();
    let idList = [];
    for (let i = 0; i < idListSize / 4; i++) {
      idList.push(this._buffer.readUInt32LE(offset));
      offset += 4;
    }
    return idList;
  }
  getCopyTable() {
    let copyTableSize = this.getCopyTableSize();
    let offset =
      84 +
      this.getFieldCount() * 4 +
      this.getRecordCount() * this.getRecordSize() +
      this.getStringTableSize() +
      this.getIdListSize();
    let copyTable = [];
    for (let i = 0; i < copyTableSize / 8; i++) {
      copyTable.push({
        idOfNewRow: this._buffer.readUInt32LE(offset),
        idOfCopiedRow: this._buffer.readUInt32LE(offset + 4),
      });
      offset += 8;
    }
    return copyTable;
  }
  getFieldInfos() {
    let fieldStorageInfoSize = this.getFieldStorageInfoSize();
    let offset =
      84 +
      this.getFieldCount() * 4 +
      this.getRecordCount() * this.getRecordSize() +
      this.getStringTableSize() +
      this.getIdListSize() +
      this.getCopyTableSize();
    let fieldInfos = [];
    for (let i = 0; i < fieldStorageInfoSize / 24; i++) {
      fieldInfos.push({
        fieldOffsetBits: this._buffer.readUInt16LE(offset),
        fieldSizeBits: this._buffer.readUInt16LE(offset + 2),
        additionalDataSize: this._buffer.readUInt32LE(offset + 4),
        storageType: this._buffer.readUInt32LE(offset + 8),
        field1: this._buffer.readUInt32LE(offset + 12),
        field2: this._buffer.readUInt32LE(offset + 16),
        field3: this._buffer.readUInt32LE(offset + 20),
      });
      offset += 24;
    }
    return fieldInfos;
  }
  build() {
    let rawRecords = this.getRecords();
    let stringData = this.getStringData();
    let idList = this.getIdList();
    let copyTable = this.getCopyTable();
    let records = [];
    for (let i = 0; i < rawRecords.length; i++) {
      let record = {};
      this._keys.forEach((key) => {
        if (this._entity[key] === t.string) {
          let start = rawRecords[i][key];
          let end = start;
          while (stringData[end] !== 0 && end < stringData.length) {
            end += 1;
          }
          let arrayBuffer = stringData.slice(start, end);
          record[key] = iconv.decode(Buffer.from(arrayBuffer), "utf8");
        } else {
          record[key] = rawRecords[i][key];
        }
      });
      records.push({ ID: idList[i], ...record });
    }
    let copyRecords = [];
    for (let i = 0; i < copyTable.length; i++) {
      let index = search(records, copyTable[i].idOfCopiedRow);
      if (index > 0) {
        let row = Object.assign({}, records[index]);
        row.ID = copyTable[i].idOfNewRow;
        copyRecords.push(row);
      }
    }
    return [...records, ...copyRecords];
  }
  static toSql(fpath, database = "foxy", version = "26972") {
    let name = fpath.split("\\").pop().split("/").pop().replace(".db2", "");
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
          throw `Undefined type: "${key}:${entity[key]}"`;
          break;
      }
    }

    return `CREATE TABLE IF NOT EXISTS \`${database}\`.\`db2_${snakeCase(
      name
    )}_${version}\` (${sql} PRIMARY KEY(\`${keys[0]}\`)) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;`;
  }
}

exports.DB2 = DB2;
