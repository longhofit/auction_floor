const express = require('express');
const router = express.Router();
const controller=require('../../controllers/customer/home.controller')
router.get('/',controller.showhome);
module.exports = router;