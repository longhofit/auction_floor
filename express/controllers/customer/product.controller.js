const multer = require('multer');
let fs = require('fs-extra');
const request = require('request');
const productModel = require('../../models/product.model');
const userModel = require('../../models/user.model');
const hepler = require('../../helpers/helper');
const storage = multer.diskStorage({
  destination: function(req, file, cb) {
    let path = `./public/imgs/sp/${req.session.ProID}`;
    fs.mkdirsSync(path);
    cb(null, path);
  },
  filename: function(req, file, cb) {
    //let filename=`${req.session.ProID}_1.jpg`
    cb(null, file.originalname + '_' + Date.now());
  }
});
const upload = multer({ storage });

module.exports.productDetail = async (req, res) => {
  const proId = req.params.id;
  req.session.beforePost = req.originalUrl;
  const [productinfo, loginfo, endtime, isEnd] = await Promise.all([
    productModel.single(proId),
    productModel.allLogByProID(proId),
    productModel.endTime(proId),
    productModel.isEnd(proId)
  ]);
  req.session.isEnd = false;
  if (isEnd.length == 1) req.session.isEnd = true;
  const [winnerinfo, sellerinfo] = await Promise.all([
    userModel.single(productinfo[0].WinerID),
    userModel.single(productinfo[0].SellerID)
  ]);
  console.log(winnerinfo[0]);
  var isMyPro = false;
  var isSellerButNotMine = false;

  if (req.session.isAuthenticated) {
    if (sellerinfo[0].f_ID == req.session.authUser.f_ID) {
      isMyPro = true;
    } else {
      if (req.session.authUser.f_Type == 'Seller') isSellerButNotMine = true;
    }
  }
  console.log(isSellerButNotMine);
  var ishavewiner = true;
  if (winnerinfo.length == 0) ishavewiner = false;
  req.session.ProID = productinfo[0].ProID;
  req.session.ProName = productinfo[0].ProName;
  req.session.StepPrice = productinfo[0].Step;
  req.session.CurrPrice = productinfo[0].Price;
  req.session.FullDes = productinfo[0].FullDes;
  req.session.SellerEmail = sellerinfo[0].f_Email;
  req.session.SellerID = sellerinfo[0].f_ID;
  var point = [];
  var point2 = await userModel.loadPoint(sellerinfo[0].f_ID);
  total2 = point2[0].LikePoint / (point2[0].DislikePoint + point2[0].LikePoint);
  total2 = `${Math.round(total2 * 100)}%`;
  var total;
  var total2;
  //  req.session.isOwn = false;

  if (ishavewiner) {
    req.session.winnerid = winnerinfo[0].f_ID;

    point = await userModel.loadPoint(winnerinfo[0].f_ID);
    total = point[0].LikePoint / (point[0].DislikePoint + point[0].LikePoint);
    total = `${Math.round(total * 100)}%`;
    //  if (req.session.authUser.f_ID == winnerinfo[0].f_ID)
    //     req.session.isOwn=true;
  }
  console.log(req.session.isOwn);

  const imgFolder = `./public/imgs/sp/${proId}/`;
  const fs = require('fs');
  var proimg = [];
  fs.readdir(imgFolder, (err, files) => {
    files.forEach(file => {
      //   console.log(`${file}`);
      if (err) console.log(err);
      var fullname = `/imgs/sp/${proId}/${file}`;
      proimg.push({ ImageLink: fullname });
    });
  });
  req.session.isNotBanBid = true;
  if (req.session.isAuthenticated == true) {
    const rows = await productModel.isInBanBidList(
      req.session.ProID,
      req.session.authUser.f_ID
    );
    if (rows.length > 0) req.session.isNotBanBid = false;
    else req.session.isNotBanBid = true;
  }

  console.log(isMyPro);
  res.render('vwProducts/detail', {
    products: productinfo[0],
    proImgs: proimg,
    winner: winnerinfo[0],
    seller: sellerinfo[0],
    loginfor: loginfo,
    endtime: endtime[0],
    validPrice: productinfo[0].Price + productinfo[0].Step,
    isnot: req.session.isNotBanBid,
    isCantBid: req.session.isCantBid,
    isNotValidPrice: req.session.isNotValidPrice,
    havewiner: ishavewiner,
    points: point[0],
    points2: point2[0],
    totals: total,
    totals2: total2,
    isMyPro: isMyPro,
    isSellerButNotMine: isSellerButNotMine,
    isEnd: req.session.isEnd,
    isNotEnd: req.session.isEnd === false,
    isNotMyPro: isMyPro == false
  });
  req.session.isNotValidPrice = false;
  req.session.isCantBid = false;
};

module.exports.formUpload = async (req, res, next) => {
  req.session.ProID = (await productModel.max(`ProID`)) + 1;
  console.log(req.session.ProID);
  if (req.session.isAuthenticated === false) {
    return res.redirect(`/account/login?retUrl=${req.originalUrl}`);
  } else {
    res.render('vwDemo/upload');
  }
};

module.exports.addProduct = async (req, res) => {
  upload.array('Image', 5)(req, res, async err => {
    if (err) {
    }
    var entity = req.body;
    var filenames = req.files.map(function(file) {
      return file.filename;
    });
    //  var imglink = [];
    for (var i = 0; i < filenames.length; i++) {
      var newname = `./public/imgs/sp/${req.session.ProID}/${req.session.ProID}_${i}.jpg`;
      // var naminSQL = `/imgs/sp/${req.session.ProID}/${req.session.ProID}_${i}.jpg`;
      //   imglink.push(naminSQL);
      var z = fs.rename(
        `./public/imgs/sp/${req.session.ProID}/${filenames[i]}`,
        newname,
        function(err) {
          if (err) console.log('ERROR: ' + err);
        }
      );
    }
    //   imgEntity = [];
    //   for (var i = 0; i < imglink.length; i++) {
    //      imgEntity.push({ ProID: entity.ProID, ImageLink: imglink[i] });
    //     }
    //     console.log(imgEntity);
    entity.SellerID = req.session.authUser.f_ID;

    entity.FullDes = `${hepler.datenow()}\n\n${req.body.FullDes}`;
    console.log(entity.FullDes);
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
  console.log('dau gia');
  if (req.session.isAuthenticated === false) {
    return res.redirect(`/account/login?retUrl=${req.session.beforePost}`);
  } else {
    entity = {
      Price: req.body.Price,
      ProID: req.session.ProID,
      UserID: req.session.authUser.f_ID,
      UserName: req.session.authUser.f_UserName
    };
    const [point, curPrice] = await Promise.all([
      userModel.loadPoint(entity.UserID),
      productModel.single(entity.ProID)
    ]);
    req.session.isCantBid = false;
    if (
      point[0].LikePoint / (point[0].LikePoint + point[0].DislikePoint) <=
      0.8
    ) {
      req.session.isCantBid = true;
      return res.redirect(req.headers.referer);
    }
    req.session.isNotValidPrice = false;
    if (entity.Price < curPrice[0].Price + curPrice[0].Step) {
      req.session.isNotValidPrice = true;
      return res.redirect(req.headers.referer);
    }

    const [result, autoBid] = await Promise.all([
      productModel.addBidLog(entity),
      // hepler.sendmail(req.session.authUser.f_Email,`ONLINE AUCTION THÔNG BÁO!!!: Bạn vừa ra giá thành công sản phẩm`,`Bạn đã ra giá ${entity.Price} đồng cho sản phẩm ${req.session.ProName}. Xem chi tiết tại abcxyz.com.`),
      // hepler.sendmail(req.session.SellerEmail,`ONLINE AUCTION THÔNG BÁO!!!: Sản phẩm của bạn đã có người ra giá`,`Tài khoản ${req.session.authUser.f_UserName} đã ra giá ${entity.Price} đồng cho sản phẩm ${req.session.ProName} của bạn. Xem chi tiết tại abcxyz.com.`),
      productModel.loadAutobid(entity.ProID)
    ]);
    if (autoBid.length != 0) {
      if (entity.Price < autoBid[0].MaxPrice) {
        console.log(entity.Price);
        console.log(req.session.StepPrice);
        entity.Price = parseInt(entity.Price, 10) + req.session.StepPrice;
        entity.UserID = autoBid[0].UserID;
        await productModel.addBidLog(entity);
        //   hepler.sendmail(req.session.SellerEmail,`ONLINE AUCTION THÔNG BÁO!!!: Sản phẩm của bạn đã có người ra giá`,`Tài khoản ${req.session.authUser.f_UserName} đã ra giá ${entity.Price} đồng cho sản phẩm ${req.session.ProName} của bạn. Xem chi tiết tại abcxyz.com.`);
        //   hepler.sendmail(req.session.authUser.f_Email,`ONLINE AUCTION THÔNG BÁO!!!: Bạn vừa ra giá thành công sản phẩm`,`Bạn đã ra giá ${entity.Price} đồng cho sản phẩm ${req.session.ProName}. Xem chi tiết tại abcxyz.com.`);
      }
    }

    res.redirect(req.headers.referer);
  }
};
module.exports.addWishList = async (req, res) => {
  if (req.session.isAuthenticated === false) {
    return res.redirect(`/account/login?retUrl=${req.session.beforePost}`);
  } else {
    entity = { UserID: req.session.authUser.f_ID, ProID: req.session.ProID };
    await productModel.addwishlist(entity);
    console.log(entity);
    // const rs2 = await productModel.allByWishList([2091, 2092]);
    // console.log(rs2);
    res.redirect(req.headers.referer);
  }
};
module.exports.allByWishList = async (req, res) => {
  if (req.session.isAuthenticated === false) {
    return res.redirect(`/account/login?retUrl=/`);
  } else {
    const rs1 = await productModel.arrIdFromList(
      req.session.authUser.f_ID,
      'wishlist'
    );
    if (rs1.length < 1) res.send('khong san pham trong list');
    else {
      ids = [];
      for (var i = 0; i < rs1.length; i++) ids.push(rs1[i].ProID);
      const rs2 = await productModel.allByArrID(ids);
      console.log(rs2);
      res.render('vwProducts/allByWishList', { products: rs2, empty: 0 });
    }
  }
};
module.exports.allByBiddingList = async (req, res) => {
  const arrId = await productModel.arrIdFromList(
    req.session.authUser.f_ID,
    'bidding_log'
  );
  if (arrId.length < 1) res.send('khong san pham trong list');
  else {
    ids = [];
    for (var i = 0; i < arrId.length; i++) ids.push(arrId[i].ProID);
    const endTimeIDs = await productModel.arrIdContinue(ids);
    if (endTimeIDs.length < 1) res.send('khong san pham trong list');
    else {
      console.log(endTimeIDs);
      ids2 = [];
      for (var x = 0; x < endTimeIDs.length; x++)
        ids2.push(endTimeIDs[x].ProID);
      //console.log(`ids2${ids2}`);
      const result = await productModel.allByArrID(ids2);

      for (pro of result) {
        if (pro.WinerID == req.session.authUser.f_ID) pro.isOwn = true;
        else pro.isOwn = false;
      }
      console.log(result);

      res.render('vwProducts/allByBiddinglist', {
        products: result,
        empty: 0
      });
    }
  }
};
module.exports.allByWonList = async (req, res) => {
  const arrId = await productModel.arrIdFromList(
    req.session.authUser.f_ID,
    'bidding_log'
  );
  if (arrId.length < 1) res.send('khong san pham trong list');
  else {
    ids = [];
    for (var i = 0; i < arrId.length; i++) ids.push(arrId[i].ProID);
    const continueIDs = await productModel.arrIdEnd(ids);
    if (continueIDs.length < 1) res.send('khong san pham trong list');
    else {
      console.log(continueIDs);
      ids2 = [];
      for (var x = 0; x < continueIDs.length; x++)
        ids2.push(continueIDs[x].ProID);
      //console.log(`ids2${ids2}`);
      const result = await productModel.allByArrIDWon(
        ids2,
        req.session.authUser.f_ID
      );
      console.log(result);
      res.render('vwProducts/allByBiddinglist', {
        products: result,
        empty: 0
      });
    }
  }
};

module.exports.allBySellingList = async (req, res) => {
  const arrId = await productModel.allContinue();
  if (arrId.length < 1) res.send('khong san pham trong list');
  else {
    ids = [];
    for (var i = 0; i < arrId.length; i++) ids.push(arrId[i].ProID);
    const result = await productModel.allByArrIDBidding(
      ids,
      req.session.authUser.f_ID
    );
    console.log(result);
    res.render('vwProducts/allByBiddinglist', {
      products: result,
      empty: 0
    });
  }
  //allByArrIDBidding
};
module.exports.allByBiddedList = async (req, res) => {
  const arrId = await productModel.allEnd();
  if (arrId.length < 1) res.send('khong san pham trong list');
  else {
    ids = [];
    for (var i = 0; i < arrId.length; i++) ids.push(arrId[i].ProID);
    const result = await productModel.allProIBidded(
      ids,
      req.session.authUser.f_ID
    );
    console.log(result);
    res.render('vwProducts/allByBiddinglist', {
      products: result,
      empty: 0
    });
  }
  //allByArrIDBidding
};
module.exports.feedbackseller = async (req, res) => {
  if (req.session.isAuthenticated === false) {
    return res.redirect(`/account/login?retUrl=${req.session.beforePost}`);
  } else {
    console.log(req.body);
    UserID = req.session.SellerID;
    var entity;
    if (req.body.point == 1)
      entity = { f_ID: UserID, f_LikePoint: 1, f_Dislikepoint: 0 };
    if (req.body.point == -1)
      entity = { f_ID: UserID, f_LikePoint: 0, f_Dislikepoint: 1 };
    entity2 = {
      content: req.body.content,
      fberid: req.session.authUser.f_ID,
      fbtoid: UserID,
      proid: req.session.ProID
    };
    console.log(entity);
    console.log(entity2);

    await Promise.all([
      userModel.patch(entity),
      userModel.addFeedback(entity2)
    ]);

    res.redirect(req.headers.referer);
  }
};

module.exports.autobidding = async (req, res) => {
  if (req.session.isAuthenticated === false) {
    return res.redirect(`/account/login?retUrl=${req.session.beforePost}`);
  } else {
    entity = {
      UserID: req.session.authUser.f_ID,
      ProID: req.session.ProID,
      //   UserName: req.session.authUser.f_Name,
      MaxPrice: req.body.maxprice
    };
    entity2 = {
      Price: req.session.CurrPrice + req.session.StepPrice,
      ProID: req.session.ProID,
      UserID: req.session.authUser.f_ID
      // UserName: req.session.authUser.f_Name
    };
    await Promise.all([
      productModel.addAutoBid(entity),
      productModel.addBidLog(entity2)
    ]);
    //  hepler.sendmail(req.session.authUser.f_Email,`ONLINE AUCTION THÔNG BÁO!!!: Bạn vừa chọn ra  giá tự động `,`Bạn đã ra giá max ${entity.MaxPrice} đồng cho sản phẩm ${req.session.ProName}.Hệ thống sẽ tự đấu giá tự động. Xem chi tiết tại abcxyz.com.`);
    // hepler.sendmail(req.session.SellerEmail,`ONLINE AUCTION THÔNG BÁO!!!: Sản phẩm của bạn đã có người ra giá`,`Tài khoản ${req.session.authUser.f_UserName} đã ra giá ${entity2.Price} đồng cho sản phẩm ${req.session.ProName} của bạn. Xem chi tiết tại abcxyz.com.`);

    res.redirect(req.headers.referer);
  }
};
module.exports.vwappen = (req, res) => {
  res.render('vwDemo/append');
};
module.exports.append = async (req, res) => {
  console.log(req.body);
  entity = {
    ProID: req.session.ProID,
    FullDes: `${
      req.session.FullDes
    }\n\nThời gian bổ sung:\n\n${hepler.datenow()}${req.body.FullDes}`
  };
  console.log(entity);
  await productModel.patch(entity);

  res.redirect(req.headers.referer);
};
module.exports.banbid = async (req, res) => {
  console.log(req.body);
  entity = {
    UserID: req.body.UserID,
    ProID: req.session.ProID
  };
  console.log(entity);
  console.log(`winer: ${req.session.winnerid}`);
  const [rs1, rs2] = await Promise.all([
    productModel.addBannedList(entity),
    userModel.single(entity.UserID)
  ]);

  // hepler.sendmail(rs2[0].f_Email,`ONLINE AUCTION  THÔNG BÁO!!:Bạn vừa bị kick ra khỏi sản phẩm`,`Bạn vừa bị người bán từ chối ra giá sản phẩm ${req.session.ProName}, chi tiết xem tại abcxyz.com`);

  // if (req.session.winnerid == entity.UserID) {

  //     await Promise.all([
  //         productModel.addBannedList(entity),
  //         productModel.delBidLog(entity.ProID,entity.UserID)
  //     ])
  //     const results= await productModel.loadWinWithPrice(entity.ProID);
  //     console.log(results);
  //     entity2={
  //         ProID:results[0].ProID,
  //         WinerID: results[0].UserID,
  //         Price: results[0].Price
  //     }
  //     await productModel.patch(entity2);

  // }
  res.redirect(req.headers.referer);
};
module.exports.feedbackwinner = async (req, res) => {
  if (req.session.isAuthenticated === false) {
    return res.redirect(`/account/login?retUrl=${req.session.beforePost}`);
  } else {
    console.log(req.body);
    UserID = req.session.winnerid;
    var entity;
    if (req.body.point == 1)
      entity = { f_ID: UserID, f_LikePoint: 1, f_Dislikepoint: 0 };
    if (req.body.point == -1)
      entity = { f_ID: UserID, f_LikePoint: 0, f_Dislikepoint: 1 };
    entity2 = {
      content: req.body.content,
      fberid: req.session.authUser.f_ID,
      fbtoid: UserID,
      proid: req.session.ProID
    };
    console.log(entity);
    console.log(entity2);

    await Promise.all([
      userModel.patch(entity),
      userModel.addFeedback(entity2)
    ]);

    res.redirect(`/products/detail/${entity2.proid}`);
  }
};
module.exports.test = (req, res) => {
  res.render('vwProducts/test.hbs');
};
module.exports.capcha = (req, res) => {
  if (
    req.body['g-recaptcha-response'] === undefined ||
    req.body['g-recaptcha-response'] === '' ||
    req.body['g-recaptcha-response'] === null
  ) {
    return res.json({ responseError: 'Please select captcha first' });
  }
  const secretKey = '6LcdpssUAAAAALt-am7HkpUvbcW6nJryfK5D5vlF';

  const verificationURL =
    'https://www.google.com/recaptcha/api/siteverify?secret=' +
    secretKey +
    '&response=' +
    req.body['g-recaptcha-response'] +
    '&remoteip=' +
    req.connection.remoteAddress;

  request(verificationURL, function(error, response, body) {
    body = JSON.parse(body);

    if (body.success !== undefined && !body.success) {
      return res.json({ responseError: 'Failed captcha verification' });
    }
    res.send('123123');
  });
};
