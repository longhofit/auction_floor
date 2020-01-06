const express = require('express');
const router = express.Router();
const controller=require('../../controllers/customer/home.controller')
const helper = require('../../helpers/helper');
router.get('/',controller.showhome);
module.exports = router;