const DBC = require("./lib/dbc");

let start = Date.now();
let dbc = DBC.read("/Users/cals/FoxWoW/Server/Core/data/dbc/FootstepTerrainLookup.dbc");
let end = Date.now();

console.log(dbc);
console.log(`Time used: ${end - start} milseconds.`);
