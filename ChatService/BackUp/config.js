module.exports = {
  PORT: process.env.PORT || 8005,
  JWT_SECRET: process.env.JWT_SECRET || 'thisissecret',
  MONGODB_URI: process.env.MONGODB_URI || 'mongodb://localhost/chat',
};
