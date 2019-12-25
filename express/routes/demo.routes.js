const express = require('express');
const multer = require('multer');
let fs = require('fs-extra');
const storage = multer.diskStorage({
  destination: function (req, file, cb) {
    
    //console.log(req.headers);
    //let a = "c"
    let path = `./public/imgs/`;

    //fs.mkdirsSync(path);
    cb(null, path);
  },
  filename: function (req, file, cb) {

    cb(null, file.originalname)
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
  upload.single('Image')(req, res, err => {
    if (err) { }
  });
  res.send('ok');
});
router.get('/upload', function (req, res) {
  res.render('vwDemo/upload');
});
router.post('/upload', (req, res) => {


  upload.single('Image')(req, res,  err => {
    if (err) { };
    var entity = req.body;
    entity.Image = `/imgs/sp/${entity.ProID}/main_thumbs.jpg`;
    const result =  productModel.add(entity);
  });
  res.send('ok');
})
module.exports = router;