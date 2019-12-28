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
    req.session.beforePost=req.originalUrl
    const [productinfo, loginfo,endtime] = await Promise.all([
        productModel.single(proId),
        productModel.allLogByProID(proId),
        productModel.endTime(proId)

    ]);
  
        
    


    const [winnerinfo, sellerinfo] = await Promise.all([
        userModel.single(productinfo[0].WinerID),
        userModel.single(productinfo[0].SellerID)

    ]);
    req.session.ProID=proId;
    const imgFolder = `./public/imgs/sp/${proId}/`;
    const fs = require('fs');
    var proimg=[];
    fs.readdir(imgFolder, (err, files) => {
        files.forEach(file => {
         //   console.log(`${file}`);
            if(err) console.log(err);
            var fullname=`/imgs/sp/${proId}/${file}`
            proimg.push({ImageLink: fullname });
        });
    });
    res.render('vwProducts/detail', {
        products: productinfo[0],
        proImgs: proimg,
        winner:winnerinfo[0],
        seller : sellerinfo[0],
        loginfor : loginfo,
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
        entity.SellerID=req.session.authUser.f_ID;
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
        return res.redirect(`/account/login?retUrl=${ req.session.beforePost}`);
    }
    else {
        entity={Price:req.body.Price, ProID: req.session.ProID, UserID:req.session.authUser.f_ID, UserName:req.session.authUser.f_Name };
        console.log(entity);
        const result = await productModel.addBidLog(entity);
        res.redirect(req.headers.referer);
        
    }
   
}


