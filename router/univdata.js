const univController = require('../controllers/univdata');
const router = require('express').Router();


router.post('/', univController.create);
router.get('/', univController.getAll);
router.put('/:id', univController.update);
router.delete('/:id', univController.delete);
router.get('/:id', univController.findOne);



module.exports = router;