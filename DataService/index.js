const express = require('express'),
  https = require('https'),
  app = express(),
  config = require('./configs/app'),
  fs = require('fs')

// Express Configs
require('./configs/express')(app)

// Middleware
require('./configs/middleware')

// Routes
app.use(require('./routes'))

// Error handler
require('./configs/errorHandler')(config.isProduction, app)



// Start Server
// const server = app.listen(config.port, () => {
//   let host = server.address().address
//   let port = server.address().port
//   console.log(`Server is running at http://${host}:${port}`)
// })



var https_options = {
  key: fs.readFileSync('/home/ubuntu/key.pem'),
  cert: fs.readFileSync('/home/ubuntu/cert.pem'),
};
// let host = server.address().address
// let port = server.address().port


const server = app.listen(config.port, () => {
  https_options
  let host = server.address().address
  let port = server.address().port
  console.log(`Server is running at http://${host}:${port}`)
})


