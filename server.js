'use strict';

const config = require('./config.js');
const express = require('express');

// App
const app = express();
app.get('/', (req, res) => {
  res.send(`Hello World. I am running on http://${config.HOST}:${config.PORT} in ENV ${config.NODE_ENV}`);
});

app.listen(config.PORT, config.HOST);
console.log(`Running on http://${config.HOST}:${config.PORT} in ENV ${config.NODE_ENV}`);
