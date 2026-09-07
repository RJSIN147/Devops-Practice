const express = require('express');

const app = express();
const port = process.env.PORT || 3000;

app.get('/', (_request, response) => {
  response.send('<!doctype html><html><body><h1>Hello World from Node.js!</h1></body></html>');
});

app.listen(port, () => console.log(`Node.js app listening on port ${port}`));
