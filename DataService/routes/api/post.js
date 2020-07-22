const router = require('express').Router()
const controllers = require('../../controllers/post.controller')


router.get('/', controllers.onGetAll)
router.get('/:id', controllers.onGetById)
router.post('/:id' ,controllers.onInsert)
router.put('/:id', controllers.onUpdate)
router.delete('/:id', controllers.onDelete)
router.patch('/:id', controllers.onPatch)
module.exports = router