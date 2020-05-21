const serverless = require('serverless-http');
const app = require('../backend/src/app').createExpressApp('/.netlify/functions');

exports.handler = serverless(app);
