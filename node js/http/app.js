const http = require("http");

const server = http.createServer((req, res) => {
  if (req.url === "/") {
    res.end("home ////////////////");
    return;
  } else if (req.url === "/about") {
    res.end("/about /about /about /about");
    return;
  } else {
    res.writeHead(404, { "Content-Type": "text/html" });
    res.end(`
      <h1>404 Not Found</h1>
      <a href='/'>Back home</a>
    `);
  }
});

server.listen(5000, () => {
  console.log("Server is listening on port 5000");
});
