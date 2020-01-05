const express = require('express');
const restrict=require('../../middlewares/auth.mdw');
const router = express.Router();
const controller=require('../../controllers/customer/account.controller');
var Recaptcha = require('express-recaptcha').RecaptchaV3;
var recaptcha = new Recaptcha('6Lc-dcsUAAAAAJtFqPjyafyp8DBRdvyrX22pViCI', `6Lc-dcsUAAAAAB0g0GRAxi8oZewd1mevzzCmvujT
`,{callback:'cb'});
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
router.get('/feedback',controller.vwfeedback);
router.post('/deleteuser',controller.deleteUser);
module.exports = router;