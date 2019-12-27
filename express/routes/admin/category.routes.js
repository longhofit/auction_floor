const express = require('express');
const categoryModel = require('../../models/category.model');
const router = express.Router();
const controller=require('../../controllers/admin/category.controller');
router.get('/',controller.catIndex);
router.get('/add',controller.vwadd);
router.post('/add',controller.add)
router.get('/err',controller.err)
router.get('/edit/:id', controller.vwEdit);
router.get('/edit2/:id', controller.vwEdit2);
router.post('/patch', controller.patch);
router.post('/del', controller.del);
module.exports = router;