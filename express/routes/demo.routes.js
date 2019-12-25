const express = require('express');
const multer = require('multer');
const storage = multer.diskStorage({
  filename: function (req, file, cb) {
    cb(null, file.originalname)
  },
  destination: function (req, file, cb) {
    cb(null, `./public/imgs/`);
  },
});
const upload = multer({ storage });
const productModel = require('../models/product.model');
const config = require('../config/default.json');
const router = express.Router();
router.get('/editor', function (req, res) {
  res.render('vwDemo/editor');
});

router.post('/editor', async (req, res) => {
  const result = await productModel.add(req.body);
  res.end();
});
router.get('/upload', function (req, res) {
  res.render('vwDemo/upload');
});
router.post('/upload',(req,res)=>{
  upload.single('fuMain')(req,res,err=>{
    if(err){}
  });
  res.send('ok');
})
module.exports = router;