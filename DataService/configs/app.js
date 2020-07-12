require('dotenv').config()

module.exports = {
    port: process.env.PORT || 3000,
    hostaddress: process.env.HOST || '2fast.online',
    isProduction: process.env.NODE_ENV === 'production',
    apiVersion: process.env.API_VERSION || 1,
    token_exp_days: process.env.TOKEN_EXP_DAYS || 1,
    secret: process.env.NODE_ENV === 'production' ? process.env.SECRET : 'thisissecret',
    mongodbUri: process.env.MONGODB_URI,
    pageLimit: process.env.PAGE_LIMIT || 15
}