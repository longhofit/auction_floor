const express = require('express');
const restrict=require('../../middlewares/auth.mdw');
const router = express.Router();
const controller=require('../../controllers/customer/account.controller');
router.get('/register',controller.vwregister);
router.post('/register',controller.register);
router.get('/login',controller.vwlogin);
router.post('/login',controller.login);
router.get('/profile',restrict.beforeLogin,controller.profile);
router.post('/profile',restrict.beforeLogin,controller.updateprofile);
router.post('/logout',controller.logout)
router.get('/request',controller.vwrequest);
router.post('/request',controller.sendrequest);
router.get('/public_profile/:id',controller.public_profile);
router.get('/changepass',controller.vwchangepass);
router.post('/changepass',controller.changepass);
router.get('/feedbackpoint',controller.viewpoint);
module.exports = router;