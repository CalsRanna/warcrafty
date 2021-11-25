const fs = require("fs");
const iconv = require("iconv-lite");
const { search } = require("../lib/util");
const t = require("../types");
const entities = require("../entities/26972");
const HEADER_SIZE = 84;
import { camelCase, snakeCase } from "camel-case";

const FIELD_COMPRESSION = {
  NONE: 0,
  BITPACKED: 1,
  COMMON_DATA: 2,
  BITPACKED_INDEX: 3,
  BITPACKED_INDEXED_ARRAY: 4,
};

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
  getRowCount() {
    return this._buffer.readUInt32LE(4);
  }
  getColumnCount() {
    return this._buffer.readUInt32LE(8);
  }
  getRowSize() {
    return this._buffer.readUInt32LE(12);
  }
  getStringDataSize() {
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
  getCopyDataSize() {
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
  getIdDataSize() {
    return this._buffer.readUInt32LE(64);
  }
  getColumnMetaSize() {
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
    let columnCount = this.getColumnCount();
    let offset = HEADER_SIZE;
    let fields = [];
    for (let i = 0; i < columnCount; i++) {
      fields.push({
        size: this._buffer.readInt16LE(offset),
        position: this._buffer.readInt16LE(offset + 2),
      });
      offset += 4;
    }
    return fields;
  }
  getRows() {
    let rowCount = this.getRowCount();
    let rowSize = this.getRowSize();
    let columnMetas = this.getColumnMetas();
    let fields = this.getFields();
    let offset = HEADER_SIZE + this.getColumnCount() * 4;
    let rows = [];
    for (let i = 0; i < rowCount; i++) {
      let record = {};
      for (let i = 0; i < fields.length; i++) {
        let key = this._keys[i];
        let byte = (32 - fields[i].size) / 8;
        switch (columnMetas[i].storageType) {
          case FIELD_COMPRESSION.NONE:
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
                    Math.round(
                      (this._buffer.readFloatLE(offset + fields[i].position) + Number.EPSILON) *
                        10000
                    ) / 10000;
                }
                break;
              default:
                record[key] = null;
                break;
            }
            break;
          case FIELD_COMPRESSION.BITPACKED:
            break;
          case FIELD_COMPRESSION.COMMON_DATA:
            break;
          case FIELD_COMPRESSION.BITPACKED_INDEX:
            break;
          case FIELD_COMPRESSION.BITPACKED_INDEXED_ARRAY:
            break;
        }
      }
      rows.push(record);
      offset += rowSize;
    }
    return rows;
  }
  getStringData() {
    let stringDataSize = this.getStringDataSize();
    let offset = HEADER_SIZE + this.getColumnCount() * 4 + this.getRowCount() * this.getRowSize();
    let stringData = [];
    for (let i = 0; i < stringDataSize; i++) {
      stringData.push(this._buffer.readUInt8(offset));
      offset += 1;
    }
    return stringData;
  }
  getIdData() {
    let idDataSize = this.getIdDataSize();
    let offset =
      HEADER_SIZE +
      this.getColumnCount() * 4 +
      this.getRowCount() * this.getRowSize() +
      this.getStringDataSize();
    let idData = [];
    for (let i = 0; i < idDataSize / 4; i++) {
      idData.push(this._buffer.readUInt32LE(offset));
      offset += 4;
    }
    return idData;
  }
  getCopyData() {
    let copyDataSize = this.getCopyDataSize();
    let offset =
      HEADER_SIZE +
      this.getColumnCount() * 4 +
      this.getRowCount() * this.getRowSize() +
      this.getStringDataSize() +
      this.getIdDataSize();
    let copyData = [];
    for (let i = 0; i < copyDataSize / 8; i++) {
      copyData.push({
        idOfNewRow: this._buffer.readUInt32LE(offset),
        idOfCopiedRow: this._buffer.readUInt32LE(offset + 4),
      });
      offset += 8;
    }
    return copyData;
  }
  getColumnMetas() {
    let columnMetaSize = this.getColumnMetaSize();
    let offset =
      HEADER_SIZE +
      this.getColumnCount() * 4 +
      this.getRowCount() * this.getRowSize() +
      this.getStringDataSize() +
      this.getIdDataSize() +
      this.getCopyDataSize();
    let fieldInfos = [];
    for (let i = 0; i < columnMetaSize / 24; i++) {
      let fieldStorageInfo = {};
      fieldStorageInfo.fieldOffsetBits = this._buffer.readUInt16LE(offset);
      fieldStorageInfo.fieldSizeBits = this._buffer.readUInt16LE(offset + 2);
      fieldStorageInfo.additionalDataSize = this._buffer.readUInt32LE(offset + 4);
      fieldStorageInfo.storageType = this._buffer.readUInt32LE(offset + 8);
      switch (fieldStorageInfo.storageType) {
        case 1:
          fieldStorageInfo.bitpackingOffsetBits = this._buffer.readUInt16LE(offset + 12);
          fieldStorageInfo.bitpackingSizeBits = this._buffer.readUInt16LE(offset + 16);
          fieldStorageInfo.flags = this._buffer.readUInt16LE(offset + 20);
          break;
        case 2:
          fieldStorageInfo.defaultValue = this._buffer.readUInt16LE(offset + 12);
          fieldStorageInfo.unknownOrUnused2 = this._buffer.readUInt16LE(offset + 16);
          fieldStorageInfo.unknownOrUnused3 = this._buffer.readUInt16LE(offset + 20);
          break;
        case 3:
          fieldStorageInfo.bitpackingOffsetBits = this._buffer.readUInt16LE(offset + 12);
          fieldStorageInfo.bitpackingSizeBits = this._buffer.readUInt16LE(offset + 16);
          fieldStorageInfo.unknownOrUnused3 = this._buffer.readUInt16LE(offset + 20);
          break;
        case 4:
          fieldStorageInfo.bitpackingOffsetBits = this._buffer.readUInt16LE(offset + 12);
          fieldStorageInfo.bitpackingSizeBits = this._buffer.readUInt16LE(offset + 16);
          fieldStorageInfo.arrayCount = this._buffer.readUInt16LE(offset + 20);
          break;
        default:
          fieldStorageInfo.unknownOrUnused1 = this._buffer.readUInt16LE(offset + 12);
          fieldStorageInfo.unknownOrUnused2 = this._buffer.readUInt16LE(offset + 16);
          fieldStorageInfo.unknownOrUnused3 = this._buffer.readUInt16LE(offset + 20);
          break;
      }
      offset += 24;
      fieldInfos.push(fieldStorageInfo);
    }
    return fieldInfos;
  }
  getCommonData() {
    let commonDataSize = this.getCommonDataSize();
    let offset =
      HEADER_SIZE +
      this.getColumnCount() * 4 +
      this.getRowCount() * this.getRowSize() +
      this.getStringDataSize() +
      this.getIdDataSize() +
      this.getCopyDataSize() +
      this.getColumnMetaSize();
    let commonData = [];
    for (let i = 0; i < commonDataSize; i++) {
      commonData.push(this._buffer.readUInt8(offset));
      offset += 1;
    }
    return commonData;
  }
  getPalletData() {
    let palletDataSize = this.getPalletDataSize();
    let offset =
      HEADER_SIZE +
      this.getColumnCount() * 4 +
      this.getRowCount() * this.getRowSize() +
      this.getStringDataSize() +
      this.getIdDataSize() +
      this.getCopyDataSize() +
      this.getColumnMetaSize() +
      this.getCommonDataSize();
    let palletData = [];
    for (let i = 0; i < palletDataSize; i++) {
      palletData.push(this._buffer.readUInt8(offset));
      offset += 1;
    }
    return palletData;
  }
  getRelationshipData() {
    let relationshipDataSize = this.getRelationshipDataSize();
    if (relationshipDataSize > 0) {
      let offset =
        HEADER_SIZE +
        this.getColumnCount() * 4 +
        this.getRowCount() * this.getRowSize() +
        this.getStringDataSize() +
        this.getIdDataSize() +
        this.getCopyDataSize() +
        this.getColumnMetaSize() +
        this.getCommonDataSize() +
        this.getPalletDataSize();
      let relationshipData = {};
      let entries = [];
      relationshipData.numEntries = this._buffer.readUInt32LE(offset);
      offset += 4;
      relationshipData.minId = this._buffer.readUInt32LE(offset);
      offset += 4;
      relationshipData.MaxId = this._buffer.readUInt32LE(offset);
      offset += 4;
      for (let i = 0; i < relationshipData.numEntries; i++) {
        entries.push({
          foreignId: this._buffer.readUInt32LE(offset),
          recordIndex: this._buffer.readUInt32LE(offset + 4),
        });
        offset += 8;
      }
      return { ...relationshipData, entries };
    } else {
      return [];
    }
  }
  raw() {
    return {
      magic: this.getMagic(),
      rowCount: this.getRowCount(),
      columnCount: this.getColumnCount(),
      rowSize: this.getRowSize(),
      stringDataSize: this.getStringDataSize(),
      copyDataSize: this.getCopyDataSize(),
      idDataSize: this.getIdDataSize(),
      columnMetaSize: this.getColumnMetaSize(),
      commonDataSize: this.getCommonDataSize(),
      palletDataSize: this.getPalletDataSize(),
      relationshipDataSize: this.getRelationshipDataSize(),
      locale: this.getLocale(),
      flags: this.getFlags(),
      tableHash: this.getTableHash(),
      layoutHash: this.getLayoutHash(),
      idIndex: this.getIdIndex(),
      minId: this.getMinId(),
      maxId: this.getMaxId(),
      totalFieldCount: this.getTotalFieldCount(),
      lookupColumnCount: this.getLookupColumnCount(),
      bitpackedDataOffset: this.getBitpackedDataOffset(),
      offsetMapOffset: this.getOffsetMapOffset(),
      columns: this.getFields(),
      columnMetas: this.getColumnMetas(),
      rows: this.getRows(),
      stringData: this.getStringData(),
      copyData: this.getCopyData(),
      idData: this.getIdData(),
      commonData: this.getCommonData(),
      palletData: this.getPalletData(),
      relationshipData: this.getRelationshipData(),
    };
  }
  build() {
    let rawRecords = this.getRows();
    let stringData = this.getStringData();
    let idData = this.getIdData();
    let copyData = this.getCopyData();
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
      records.push({ ID: idData[i], ...record });
    }
    let copyRecords = [];
    for (let i = 0; i < copyData.length; i++) {
      let index = search(records, copyData[i].idOfCopiedRow);
      if (index > 0) {
        let row = Object.assign({}, records[index]);
        row.ID = copyData[i].idOfNewRow;
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
