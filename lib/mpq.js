const fs = require("fs");

function read(fpath) {
  return new Promise((resolve, reject) => {
    fs.readFile(fpath, (error, buffer) => {
      if (error) {
        reject(error);
      } else {
        console.log(buffer);
        console.log(buffer.toString("hex", 44, 100));
        let signature = getSignature(buffer);
        if (signature === 'MPQ\x1A') {
          let formatVersion = getFormatVersion(buffer);
          let headerSize = getHeaderSize(buffer);
          let archiveSize = getArchiveSize(buffer);
          let blockSize = getBlockSize(buffer);
          let hashTableOffset = getHashTableOffset(buffer);
          let blockTableOffset = getBlockTableOffset(buffer);
          let hashTableSize = getHashTableSize(buffer);
          let blockTableSize = getBlockTableSize(buffer);
          if (formatVersion === 2) {
            let extendedBlockTableOffset = getExtendedBlockTableOffset(buffer);
            let extendedHashTablePosition = getExtendedHashTablePosition(buffer);
            let extendedBlockTablePosition = getExtendedBlockTablePosition(buffer);
            resolve({
              header: {
                signature,
                formatVersion,
                headerSize,
                archiveSize,
                blockSize,
                hashTableOffset,
                hashTableSize,
                blockTableOffset,
                blockTableSize,
              },
              extendedHeader: {
                extendedBlockTableOffset,
                extendedHashTablePosition,
                extendedBlockTablePosition,
              }
            });
          } else {
            resolve({
              header: {
                signature,
                formatVersion,
                headerSize,
                archiveSize,
                blockSize,
                hashTableOffset,
                hashTableSize,
                blockTableOffset,
                blockTableSize,
              },
            });
          }
        } else {
          let userDataSize = getUserDataSize(buffer);
          let headerPosition = getHeaderPosition(buffer);
          resolve({
            shunt: {signature, userDataSize, headerPosition,}
          });
        }
      }
    });
  });
}

function getSignature(buffer) {
  return buffer.toString("utf8", 0, 3) + (buffer[3] == 0x1a ? "\x1A" : "\x1B");
}

function getHeaderSize(buffer) {
  return buffer.readUInt32LE(4);
}

function getUserDataSize(buffer) {
  return buffer.readUInt32LE(4);
}

function getArchiveSize(buffer) {
  return buffer.readUInt32LE(8);
}

function getHeaderPosition(buffer) {
  return buffer.readUInt32LE(8);
}

function getFormatVersion(buffer) {
  return buffer.readUInt16LE(12) + 1;
}

function getBlockSize(buffer) {
  return buffer.readUInt16LE(14);
}

function getHashTableOffset(buffer) {
  return buffer.readUInt32LE(16);
}

function getBlockTableOffset(buffer) {
  return buffer.readUInt32LE(20);
}

function getHashTableSize(buffer) {
  return Math.log(buffer.readUInt32LE(24)) / Math.log(2);
}

function getBlockTableSize(buffer) {
  return buffer.readUInt32LE(28);
}

function getExtendedBlockTableOffset(buffer) {
  return buffer.readBigUInt64LE(32);
}

function getExtendedHashTablePosition(buffer) {
  return buffer.readUInt16LE(40);
}

function getExtendedBlockTablePosition(buffer) {
  return buffer.readUInt16LE(42);
}

exports.read = read;