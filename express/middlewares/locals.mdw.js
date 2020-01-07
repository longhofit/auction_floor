const categoryModel = require('../models/category.model');
const userModel = require('../models/user.model');
var cron = require('node-cron');
const productModel = require('../models/product.model');
const helper = require('../helpers/helper')
module.exports = function (app) {
  app.use(async (req, res, next) => {
    // sent = [];
    // cron.schedule('*/1 * * * *', async () => {
    //   allEnd = await productModel.allEnd();
    //   listProID = [];
    //   for (ele of allEnd) {
    //     listProID.push(ele.ProID);
    //   }
    //   console.log(listProID);
    //   for (i of listProID) {
    //     proinfo = await productModel.single(i);
    //     console.log(proinfo[0]);
    //     winnerinfo = await userModel.single(proinfo[0].WinerID);
    //     sellerinfo = await userModel.single(proinfo[0].SellerID);
    //     console.log(winnerinfo[0]);
    //     console.log(sellerinfo[0]);
    //     flag1 = 0;
    //     for (x of sent) {
    //       if (proinfo[0].WinerID == x) {
    //         flag1 = 1;
    //       }
    //     }
    //     if (flag1 == 0) {
    //       helper.sendmail(winnerinfo[0].f_Email, "THÔNG BÁO!!!", `Bạn đã thắng đấu giá ở sản phẩm ${proinfo[0].ProName}, chi tiết xem tại abc.com`);
    //       helper.sendmail(sellerinfo[0].f_Email, "THÔNG BÁO!!!", `Sản phẩm ${proinfo[0].ProName} của bạn đã có người mua, chi tiết xem tại abc.com`);
    //       sent.push(proinfo[0].WinerID);
    //       sent.push(proinfo[0].SellerID);

    //     }

    //   }
    // });

    res.locals.retUrl = req.originalUrl;
    const rows = await categoryModel.allWithDetails();

    res.locals.lcCategories = rows;
    res.locals.isBidder = false;
    res.locals.isSeller = false;
    res.locals.isAdmin = false;
    // const rows2= await userModel.singleByUsername(req.session.authUser.f_UserName);
    if (typeof (req.session.isAuthenticated) === 'undefined') {
      req.session.isAuthenticated = false;
    }
    res.locals.isAuthenticated = req.session.isAuthenticated;
    res.locals.authUser = req.session.authUser;
    if (res.locals.authUser != undefined) {
      //cap nhat thong tin user moi lan f5
      reuser = await userModel.singleByUsername(res.locals.authUser.f_UserName);
      res.locals.authUser = reuser;
    }
    res.locals.CatID = req.body.CatID;
    res.locals.isNotBanBid = req.session.isNotBanBid;
    if (res.locals.isAuthenticated) {
      if (res.locals.authUser.f_Type == "bidder") {
        res.locals.isBidder = true;
      }
      if (res.locals.authUser.f_Type == "seller") {
        res.locals.isSeller = true;
      }
      if (res.locals.authUser.f_Type == "admin") {
        res.locals.isAdmin = true;
      }
    }
    else {
      res.locals.isAnony = true;
    }
    next();

  });
};
// module.exports = async (req, res, next) => {
//     const rows = await categoryModel.allWithDetails();
//     res.locals.lcCategories = rows;
//     next();
// }