const express = require('express');
const productModel = require('../../models/product.model');
const config=require('../../config/default.json');
const controller=require('../../controllers/customer/category.controller')
const router = express.Router();
router.get('/:id/products', controller.productByCat);
module.exports = router;