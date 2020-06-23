const jwt = require('express-jwt'),
    secret = require('../configs/app').secret

const getTokenFromHeader = (req) => {
    if (req.headers['x-access-token']) {
        return req.headers['x-access-token'];
    }
    return null;
}

const auth = {
    required: jwt({
        secret: secret,
        getToken: getTokenFromHeader
    }),
    optional: jwt({
        secret: secret,
        credentialsRequired: false,
        getToken: getTokenFromHeader
    })
};

module.exports = auth;