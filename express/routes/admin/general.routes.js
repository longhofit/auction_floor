const express = require('express');
const userModel=require('../../models/user.model');
const router = express.Router();
const controller=require('../../controllers/admin/general.controller');
router.get('/',controller.vwmanagerUser);
router.get('/accept',controller.vwaccept);
router.post('/accept',controller.accept);
router.get('/userlist',controller.vwlist);
module.exports = router;
