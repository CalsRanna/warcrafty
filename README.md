# Warcrafty

## Introduction

Warcrafty is a library used to read / write dbc file writed with javascript.

## Install

`yarn add warcrafty`

## Usage

```javascript
const DBC = require("warcrafty");

DBC.read("path/to/your/file/Item.dbc").then((dbc) => {
  //Do something.
});

DBC.write("path/to/your/file/Item.dbc", records).then(() => {
  //Do something.
});
```
