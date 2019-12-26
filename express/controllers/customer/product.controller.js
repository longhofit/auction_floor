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
    // for (const c of res.locals.lcCategories) {
    //     if (c.proId === +req.params.id) {
    //         c.isActive = true;
    //     } 
    // }
    const proId = req.params.id;
    const rows = await productModel.single(proId);

    res.render('vwProducts/detail', {
        products: rows[0],


    });
}
module.exports.getNextID = async (req, res, next) => {
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
        entity.ProID = req.session.ProID;
        entity.Image = `/imgs/sp/${req.session.ProID}/${entity.ProID}_1.jpg`;
        const result = await productModel.add(entity);
        var filenames = req.files.map(function (file) {
            return file.filename;
        });
        for (var i = 0; i < filenames.length; i++) {
            fs.rename(`./public/imgs/sp/${req.session.ProID}/${filenames[i]}`, `./public/imgs/sp/${req.session.ProID}/${req.session.ProID}_${i}.jpg`, function (err) {
                if (err) console.log('ERROR: ' + err);
            });
        }

        res.redirect('/products/upload');
    });
};

