const express = require('express');
const controller=require('../../controllers/customer/category.controller')
const router = express.Router();
router.get('/:id/products', controller.productByCat);
module.exports = router;