const multer = require('multer');
let fs = require('fs-extra');
const nodemailer = require('nodemailer');
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
    // var cron = require('node-cron');

    // cron.schedule('* * * * * *', () => {
    //     console.log('running a task every minute');
    // });
    
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
    req.session.ProName = productinfo[0].ProName;
    req.session.StepPrice=productinfo[0].Step;
    req.session.CurrPrice=productinfo[0].Price;
    req.session.SellerEmail = sellerinfo[0].f_Email;
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
        endtime: endtime[0],
        validPrice:productinfo[0].Price+productinfo[0].Step

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
        const [result,autoBid] = await Promise.all([
            productModel.addBidLog(entity),
           productModel.loadAutobid(entity.ProID),
        ])
       if (autoBid.length!=0)
        {
            if(entity.Price<autoBid[0].MaxPrice)
               {
                console.log(entity.Price);
                console.log(req.session.StepPrice);
                   entity.Price= parseInt(entity.Price,10) +req.session.StepPrice;
                   entity.UserID=autoBid[0].UserID;
                   entity.UserName=autoBid[0].UserName;
                   await productModel.addBidLog(entity);
               }
        }
        

    
        // var transporter = nodemailer.createTransport({
        //     service: 'gmail',
        //     host: "smtp.gmail.com",
        //     port: "465",
        //     ssl: true,
        //     auth: {
        //         user: 'lelongho998@gmail.com',
        //         pass: '0909565151It'
        //     }
        // });

        // var mailOptions = {
        //     from: 'lelongho998@gmail.com',
        //     to: `${req.session.authUser.f_Email},${req.session.SellerEmail}`,
        //     subject: 'THÔNG BÁO: Đặt giá thành công',
        //     text: `Bạn đã ra giá cho sản phẩm ${req.session.ProName} với mức giá ${req.body.Price}, chi tiết xem tại abcxyz.com/products/detail/${req.session.ProID}`
        // };
        // transporter.sendMail(mailOptions, function (error, info) {
        //     if (error) {
        //         console.log(error);
        //     } else {
        //         console.log('Email sent: ' + info.response);
        //     }
        // })
        // var mailOptions2 = {
        //     from: 'lelongho998@gmail.com',
        //     to: `${req.session.SellerEmail}`,
        //     subject: 'THÔNG BÁO: Đã có người ra giá cho sản phẩm của bạn',
        //     text: `Người dùng ${req.session.authUser.f_UserName} đã ra giá ${req.body.Price} cho sản phẩm của bạn, chi tiết xem tại abcxyz.com/products/detail/${req.session.ProID}`
        // };
        // transporter.sendMail(mailOptions2, function (error, info) {
        //     if (error) {
        //         console.log(error);
        //     } else {
        //         console.log('Email sent: ' + info.response);
        //     }
        // })
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
        console.log(entity);
        // const rs2 = await productModel.allByWishList([2091, 2092]);
        // console.log(rs2);
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
            res.render('vwProducts/allByBiddinglist', {
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
            const result = await productModel.allByArrIDWon(ids2, req.session.authUser.f_ID);
            console.log(result);
            res.render('vwProducts/allByBiddinglist', {
                products: result, empty: 0
            });
        }
    }
}
module.exports.allBySellingList = async (req, res) => {
    const arrId = await productModel.allContinue();
    if (arrId.length < 1)
        res.send('khong san pham trong list');
    else {
        ids = [];
        for (var i = 0; i < arrId.length; i++)
            ids.push(arrId[i].ProID);
        const result = await productModel.allByArrIDBidding(ids, req.session.authUser.f_ID);
        console.log(result);
        res.render('vwProducts/allByBiddinglist', {
            products: result, empty: 0
        });

    }
    //allByArrIDBidding


}
module.exports.allByBiddedList = async (req, res) => {
    const arrId = await productModel.allEnd();
    if (arrId.length < 1)
        res.send('khong san pham trong list');
    else {
        ids = [];
        for (var i = 0; i < arrId.length; i++)
            ids.push(arrId[i].ProID);
        const result = await productModel.allProIBidded(ids, req.session.authUser.f_ID);
        console.log(result);
        res.render('vwProducts/allByBiddinglist', {
            products: result, empty: 0
        });

    }
    //allByArrIDBidding


}
module.exports.feedback = async (req, res) => {

    if (req.session.isAuthenticated === false) {
        return res.redirect(`/account/login?retUrl=${req.session.beforePost}`);
    }
    else {

        console.log(req.body);
        var entity;
        if (req.body.point == 1)
            entity = { f_id: req.body.userid, f_LikePoint: 1, f_Dislikepoint: 0 };
        if (req.body.point == -1)
            entity = { f_id: req.body.userid, f_LikePoint: 0, f_Dislikepoint: 1 };
        entity2 = {
            content: req.body.content,
            fberid: req.session.authUser.f_ID,
            fbtoid: req.body.userid,
            proid: req.body.ProID
        }
        console.log(entity);
        console.log(entity2);

        await Promise.all([
            userModel.patch(entity),
            userModel.addFeedback(entity2)
        ])

        res.redirect(req.headers.referer);

    }

}


module.exports.autobidding = async (req, res) => {
    if (req.session.isAuthenticated === false) {
        return res.redirect(`/account/login?retUrl=${req.session.beforePost}`);
    }
    else {
        entity = {
            UserID: req.session.authUser.f_ID,
            ProID: req.session.ProID,
            UserName: req.session.authUser.f_Name,
            MaxPrice: req.body.maxprice
        }
        entity2 = { 
            Price: req.session.CurrPrice+req.session.StepPrice,
            ProID: req.session.ProID,
            UserID: req.session.authUser.f_ID,
            UserName: req.session.authUser.f_Name };
            await Promise.all([
                productModel.addAutoBid(entity),
                productModel.addBidLog(entity2)
            ])
        res.redirect(req.headers.referer);
    }

} 
