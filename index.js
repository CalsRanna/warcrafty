const DBC = require("./lib/dbc");

let start = Date.now();
// let dbc = DBC.read("D:\\FoxWOW\\Server\\Core\\data\\dbc\\CreatureFamily.dbc");
let dbc = DBC.read("/Users/cals/FoxWoW/Server/Core/data/dbc/GMSurveyAnswers.dbc");
let end = Date.now();

console.log(dbc);
console.log(`Time used: ${end - start} milseconds.`);
