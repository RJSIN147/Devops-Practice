const http = require("http");

const port = process.env.PORT || 3000;

const server = http.createServer((request, response) => {
  response.writeHead(200, { "Content-Type": "text/plain" });
  response.end("Hello from Node.js Docker app\n");
});

server.listen(port, () => {
  console.log(`Node.js app listening on port ${port}`);
});
