require('../backend/config');
require('../backend/config-database');

const express = require('express');
const serveStatic = require('serve-static');
const serveIndex = require('serve-index');
const serverless = require('serverless-http');

const app = express();

const router = express.Router();
router.use(serveIndex(__dirname, { hidden: true, view: 'details', icons: true }));
router.use(serveStatic(__dirname, { index: false, dotfiles: 'allow' }));

app.use('/.netlify/functions' + '/explorer', router);

module.exports.handler = serverless(app);
