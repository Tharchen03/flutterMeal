const { readFileSync, writeFileSync } = require("fs");

const first = readFileSync("./content/text1.txt", "utf8");

console.log(first);

writeFileSync("./content/write-file.txt", `here are the result ${first}`, {
  flag: "a",
});
