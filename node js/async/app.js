const { readFile, writeFile } = require("fs");

readFile("./content/text1.txt", "utf8", (err, result) => {
  if (err) {
    console.log(err);
  }
  //   console.log(result);

  const first = result;
  if (err) {
    console.log(err);
    return;
  }

  const second = result;
  writeFile(
    "./content/result-async.txt",
    `here is the result : ${first}, ${second}`,
    (err, result) => {
      if (err) {
        console.log(err);
      }
      console.log(result);
    }
  );
});
