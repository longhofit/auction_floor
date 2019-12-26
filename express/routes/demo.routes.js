const express = require('express');
const multer = require('multer');
let fs = require('fs-extra');
const storage = multer.diskStorage({
  destination: function (req, file, cb) {
    console.log(req.session.ProID);
    let path = `./public/imgs/sp/${req.session.ProID}`;
    console.log(path);
    fs.mkdirsSync(path);
    cb(null, path);
  },
  filename: function (req, file, cb) {
    let filename=`${req.session.ProID}_1.jpg`
    cb(null, filename)
  },

});
const upload = multer({ storage });
const productModel = require('../models/product.model');
const config = require('../config/default.json');
const router = express.Router();
router.get('/select',(req,res) =>
{
  res.render('vwDemo/selectcat');
});
router.post('/select',(req,res) =>
{
  req.session.CatID=req.CatID;
  res.redirect(`/demo/upload`);
});
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
router.get('/upload', async (req, res) => {
  req.session.ProID=await productModel.max(`ProID`)+1;
  res.render('vwDemo/upload');
});
router.post('/upload', (req, res) => {

  upload.single('Image')(req, res,  err => {
    if (err) { };
    var entity = req.body;
    entity.ProID= req.session.ProID;
    entity.Image = `/imgs/sp/${req.session.ProID}/${entity.ProID}_1.jpg`;
    const result =  productModel.add(entity);
  });
  res.redirect(`/demo/upload`);
})
module.exports = router;