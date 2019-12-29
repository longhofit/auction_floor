const express = require('express');
const router = express.Router();
const restrict=require('../../middlewares/auth.mdw');
const controller=require('../../controllers/customer/product.controller')
router.get('/detail/:id',controller.productDetail);
router.get('/upload',controller.formUpload);
router.post('/upload',controller.addProduct);
router.get('/test',controller.loadImage);
router.post('/bidding',controller.bidding);
router.post('/addwishlist',controller.addWishList);
router.get('/wishlist',restrict.beforeLogin,controller.allByWishList);
router.get('/biddinglist',restrict.beforeLogin,controller.allByBiddingList);
router.get('/wonlist',restrict.beforeLogin,controller.allByWonList);
router.get('/sellinglist',restrict.beforeLogin,controller.allBySellingList);
router.get('/biddedlist',restrict.beforeLogin,controller.allByBiddedList);
module.exports = router;