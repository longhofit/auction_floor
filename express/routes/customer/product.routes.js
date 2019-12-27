const express = require('express');
const router = express.Router();
const controller=require('../../controllers/customer/product.controller')
router.get('/detail/:id',controller.productDetail);
router.get('/upload',controller.formUpload);
router.post('/upload',controller.addProduct);
router.get('/test',controller.loadImage);
module.exports = router;