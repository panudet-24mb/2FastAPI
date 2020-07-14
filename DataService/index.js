const express = require('express'),
  app = express(),
  config = require('./configs/app'),
  fs = require('fs'),
  https = require('https')

// Express Configs
require('./configs/express')(app)

// Middleware
require('./configs/middleware')

// Routes
app.use(require('./routes'))

// Error handler
require('./configs/errorHandler')(config.isProduction, app)




var https_options = {
  key: fs.readFileSync('/home/ubuntu/key.pem'),
  cert: fs.readFileSync('/home/ubuntu/cert.pem'),
  ca: fs.readFileSync('/home/ubuntu/ca.pem')
};


const server = https.createServer(https_options, app);

server = app.listen(config.port, () => {
  let host = server.address().address
  let port = server.address().port
  console.log(`Server is running at http://${host}:${port}`)
})


