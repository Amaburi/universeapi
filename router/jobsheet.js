const router = require('express').Router();

const jobsheetController = require('../controllers/jobsheet');

// Jobsheet router
router.post('/one', jobsheetController.submitOne);
router.post('/many', jobsheetController.submitMany);

module.exports = router;