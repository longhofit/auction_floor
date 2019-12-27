const express = require('express');
const bcrypt = require('bcryptjs');
const moment = require('moment');
const userModel = require('../../models/user.model');
const restrict=require('../../middlewares/auth.mdw');
const router = express.Router();
const controller=require('../../controllers/customer/account.controller')
router.get('/register',controller.vwregister);
router.post('/register',controller.register);
router.get('/login',controller.vwlogin);
router.post('/login',controller.login);
router.get('/profile',restrict,controller.profile);
router.post('/logout',controller.logout)

module.exports = router;