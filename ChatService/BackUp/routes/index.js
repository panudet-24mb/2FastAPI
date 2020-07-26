const { Router } = require('express');
const authorize = require('../middlewares/auth');
const chatsRouter = require('./chats');

const router = new Router();

router.use('/chats', authorize, chatsRouter);

module.exports = router;
