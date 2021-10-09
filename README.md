# Warcrafty

## Introduction

Warcrafty is a library used to read / write blizzard's dbc / db2 file writed with javascript.

## Install

`yarn add warcrafty`

## Usage

### DBC

```javascript
const { DBC } = require("warcrafty");

DBC.read("path/to/your/file/Item.dbc").then((dbc) => {
  // Your code.
});

DBC.write("path/to/your/file/Item.dbc", records).then(() => {
  // Your code.
});
```

### DB2

```javascript
const { DB2 } = require("warcrafty");

let db2 = new DB2("path/to/your/file/Item.dbc");
let records = db2.build();
// Your code.
```

> _Seem like there's no need to write db2 files since hotfix can override it, so warcrafty doesn't provide a function to write db2 files._
