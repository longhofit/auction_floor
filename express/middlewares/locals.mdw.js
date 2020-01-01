const categoryModel = require('../models/category.model');

module.exports = function (app) {
  app.use(async (req, res, next) => {
    res.locals.retUrl = req.originalUrl;
    const rows = await categoryModel.allWithDetails();
    res.locals.lcCategories = rows;
    res.locals.isBidder=false;
    res.locals.isSeller=false;
    res.locals.isAdmin=false;
    if (typeof (req.session.isAuthenticated) === 'undefined') {
      req.session.isAuthenticated = false;
    }
    res.locals.isAuthenticated = req.session.isAuthenticated;
    res.locals.authUser = req.session.authUser;
    res.locals.CatID = req.body.CatID;
    res.locals.isNotBanBid = req.session.isNotBanBid;
    if(res.locals.isAuthenticated)
    {
      if(res.locals.authUser.f_Type=="bidder")
      {
        res.locals.isBidder=true;
      }
      if(res.locals.authUser.f_Type=="seller")
      {
        res.locals.isSeller=true;
      }
      if(res.locals.authUser.f_Type=="admin")
      {
        res.locals.isAdmin=true;
      }
    }
    next();

  });
};
// module.exports = async (req, res, next) => {
//     const rows = await categoryModel.allWithDetails();
//     res.locals.lcCategories = rows;
//     next();
// }