require('../backend/config');
require('../backend/config-database');

const express = require('express');
const serverless = require('serverless-http');
const apiV1Router = require('../backend/src/api/v1');

const app = express();
app.use(express.json());

app.use('/.netlify/functions' + '/api/v1', apiV1Router);

module.exports.handler = serverless(app);
