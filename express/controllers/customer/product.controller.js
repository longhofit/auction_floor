const express = require('express');
const multer = require('multer');
let fs = require('fs-extra');
const productModel = require('../../models/product.model');
const config = require('../../config/default.json');
const storage = multer.diskStorage({
    destination: function (req, file, cb) {

        let path = `./public/imgs/sp/${req.session.ProID}`;
        fs.mkdirsSync(path);
        cb(null, path);
    },
    filename: function (req, file, cb) {
        //let filename=`${req.session.ProID}_1.jpg`
        cb(null, file.originalname + "_" + Date.now());
    },

});
const upload = multer({ storage });



module.exports.productDetail = async (req, res) => {
    const proId = req.params.id;
    const rows = await productModel.single(proId);
    const imgFolder = `./public/imgs/sp/${proId}/`;
    const fs = require('fs');
    var rows2=[];
    fs.readdir(imgFolder, (err, files) => {
        files.forEach(file => {
         //   console.log(`${file}`);
            if(err) console.log(err);
            var fullname=`/imgs/sp/${proId}/${file}`
            rows2.push({ImageLink: fullname });
        });
    });
    res.render('vwProducts/detail', {
        products: rows[0],
        proImgs: rows2
    });
    // for (const c of res.locals.lcCategories) {
    //     if (c.proId === +req.params.id) {
    //         c.isActive = true;
    //     } 
    // }
   
    // const rows = await productModel.single(proId);
    // const rows2=await productModel.loadImgs(proId);

    

    // var productsImg = [];
    // // console.log(rows2[4].ImageLink);
    // // console.log(rows2[5]);
    // for (var i = 0; i < rows2.length; i++) {
    //   //  console.log(rows2[i].ImageLink);
    //     productsImg.push(rows2[i].ImageLink);
    // }
  //  console.log(productsImg);

    // proImgs=[];
    // for(var i=0;i<rows2.length;i++)
    // {
    //     proImgs[i].push(rows2[i].ImageLink)
    // }
    // console.log(proImgs);
    
}
module.exports.formUpload = async (req, res, next) => {
    req.session.ProID = await productModel.max(`ProID`) + 1;
    console.log(req.session.ProID);
    if (req.session.isAuthenticated === false) {
        return res.redirect(`/account/login?retUrl=${req.originalUrl}`);
    }
    else {
        res.render('vwDemo/upload');
    }

};
module.exports.addProduct = async (req, res) => {

    upload.array('Image', 5)(req, res, async err => {
        if (err) { };
        var entity = req.body;
        var filenames = req.files.map(function (file) {
            return file.filename;
        });
      //  var imglink = [];
        for (var i = 0; i < filenames.length; i++) {
            var newname = `./public/imgs/sp/${req.session.ProID}/${req.session.ProID}_${i}.jpg`;
           // var naminSQL = `/imgs/sp/${req.session.ProID}/${req.session.ProID}_${i}.jpg`;
         //   imglink.push(naminSQL);
            var z = fs.rename(`./public/imgs/sp/${req.session.ProID}/${filenames[i]}`, newname, function (err) {
                if (err) console.log('ERROR: ' + err);
            });


        }
     //   imgEntity = [];
     //   for (var i = 0; i < imglink.length; i++) {
      //      imgEntity.push({ ProID: entity.ProID, ImageLink: imglink[i] });
   //     }
   //     console.log(imgEntity);

        const result1 = await productModel.add(entity);
        res.redirect('/products/upload');
    });
};



module.exports.loadImage = (req, res) => {
    // var newname=`./public/imgs/sp/2046/2046_0.jpg`
    // var z = fs.rename(`./public/imgs/sp/2046/ss.jpeg_1577432610475`, newname, err=>{
    //     if (err) console.log('ERROR: ' + err);

    // });
    const testFolder = `./public/imgs/sp/2046/2046_0.jpg`;
    const fs = require('fs');

    fs.readdir(testFolder, (err, files) => {
        files.forEach(file => {
            console.log(file);
        });
    });
    res.send('ok');
}
