const jwt = require('jsonwebtoken');
const { JWT_SECRET } = require('../config');

// Checking token middleware
function auth(req, res, next) {
  if (req.headers["x-access-token"]) {
      token = req.headers["x-access-token"]

      return jwt.verify(token, JWT_SECRET, (err, decoded) => {
        if (err) {
          return res.status(403).send({
            success: false,
            message: 'Failed to authenticate token.',
          });
        }


        req.decoded = decoded;
        return next();
      });
    }


  return res.status(403).send({
    success: false,
    message: 'No token provided',
  });
}

module.exports = auth;
