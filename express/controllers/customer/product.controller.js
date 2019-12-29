const multer = require('multer');
let fs = require('fs-extra');
const productModel = require('../../models/product.model');
const userModel = require('../../models/user.model');
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
    req.session.beforePost = req.originalUrl
    const [productinfo, loginfo, endtime] = await Promise.all([
        productModel.single(proId),
        productModel.allLogByProID(proId),
        productModel.endTime(proId)

    ]);





    const [winnerinfo, sellerinfo] = await Promise.all([
        userModel.single(productinfo[0].WinerID),
        userModel.single(productinfo[0].SellerID)

    ]);
    req.session.ProID = proId;
    const imgFolder = `./public/imgs/sp/${proId}/`;
    const fs = require('fs');
    var proimg = [];
    fs.readdir(imgFolder, (err, files) => {
        files.forEach(file => {
            //   console.log(`${file}`);
            if (err) console.log(err);
            var fullname = `/imgs/sp/${proId}/${file}`
            proimg.push({ ImageLink: fullname });
        });
    });
    res.render('vwProducts/detail', {
        products: productinfo[0],
        proImgs: proimg,
        winner: winnerinfo[0],
        seller: sellerinfo[0],
        loginfor: loginfo,
        endtime: endtime[0]

    });



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
        entity.SellerID = req.session.authUser.f_ID;
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
};

module.exports.bidding = async (req, res) => {
    // console.log(req.body.Price);
    // console.log(req.session.ProID);
    // console.log(req.session.authUser.f_ID);
    if (req.session.isAuthenticated === false) {
        return res.redirect(`/account/login?retUrl=${req.session.beforePost}`);
    }
    else {
        entity = { Price: req.body.Price, ProID: req.session.ProID, UserID: req.session.authUser.f_ID, UserName: req.session.authUser.f_Name };
        const result = await productModel.addBidLog(entity);
        res.redirect(req.headers.referer);

    }

}
module.exports.addWishList = async (req, res) => {
    if (req.session.isAuthenticated === false) {
        return res.redirect(`/account/login?retUrl=${req.session.beforePost}`);
    }
    else {
        entity = { UserID: req.session.authUser.f_ID, ProID: req.session.ProID };
        await productModel.addwishlist(entity);
        const rs2 = await productModel.allByWishList([2091, 2092]);
        console.log(rs2);
        res.redirect(req.headers.referer);

    }

}
module.exports.allByWishList = async (req, res) => {

    if (req.session.isAuthenticated === false) {


        return res.redirect(`/account/login?retUrl=/`);
    }
    else {
        const rs1 = await productModel.arrIdFromList(req.session.authUser.f_ID, 'wishlist');
        if (rs1.length < 1)
            res.send('khong san pham trong list');
        else {
            ids = [];
            for (var i = 0; i < rs1.length; i++)
                ids.push(rs1[i].ProID);
            const rs2 = await productModel.allByArrID(ids);
            console.log(rs2);
            res.render('vwProducts/allByWishList', { products: rs2, empty: 0 });
        }


    }
}
module.exports.allByBiddingList = async (req, res) => {

    const arrId = await productModel.arrIdFromList(req.session.authUser.f_ID, 'bidding_log');
    if (arrId.length < 1)
        res.send('khong san pham trong list');
    else {
        ids = [];
        for (var i = 0; i < arrId.length; i++)
            ids.push(arrId[i].ProID);
        const endTimeIDs = await productModel.arrIdContinue(ids);
        if (endTimeIDs.length < 1)
            res.send('khong san pham trong list');
        else {
            console.log(endTimeIDs);
            ids2 = [];
            for (var x = 0; x < endTimeIDs.length; x++)
                ids2.push(endTimeIDs[x].ProID);
            //console.log(`ids2${ids2}`);
            const result = await productModel.allByArrID(ids2);
            console.log(result);
            res.render('vwProducts/allByBiddinglist',{
                products: result, empty: 0 
            });
        }   
    }
}
module.exports.allByWonList = async (req, res) => {

    const arrId = await productModel.arrIdFromList(req.session.authUser.f_ID, 'bidding_log');
    if (arrId.length < 1)
        res.send('khong san pham trong list');
    else {
        ids = [];
        for (var i = 0; i < arrId.length; i++)
            ids.push(arrId[i].ProID);
        const continueIDs = await productModel.arrIdEnd(ids);
        if (continueIDs.length < 1)
            res.send('khong san pham trong list');
        else {
            console.log(continueIDs);
            ids2 = [];
            for (var x = 0; x < continueIDs.length; x++)
                ids2.push(continueIDs[x].ProID);
            //console.log(`ids2${ids2}`);
            const result = await productModel.allByArrIDWon(ids2,req.session.authUser.f_ID);
            console.log(result);
            res.render('vwProducts/allByBiddinglist',{
                products: result, empty: 0 
            });
        }   
    }
}
module.exports.allBySellingList = async (req,res) => {
    const arrId= await productModel.allContinue();
    if (arrId.length < 1)
        res.send('khong san pham trong list');
    else{
        ids = [];
        for (var i = 0; i < arrId.length; i++)
            ids.push(arrId[i].ProID);
        const result= await productModel.allByArrIDBidding(ids,req.session.authUser.f_ID);
        console.log(result);
        res.render('vwProducts/allByBiddinglist',{
            products: result, empty: 0 
        });
        
    }
    //allByArrIDBidding


}



