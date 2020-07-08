const router = require('express').Router()
const auth = require('../auth')

router.use('/posts', auth.required, require('./post'))
router.use('/images', auth.required, require('./image'))

module.exports = router