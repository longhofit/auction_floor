const productsModel = require('../../models/product.model');
module.exports.showhome = async (req, res) => {
  [topbidding, top5price, top5endtime] = await Promise.all([
    productsModel.topBidding(5),
    productsModel.topPrice(5),
    productsModel.topEndtime(5)
  ]);

  console.log(topbidding);
  res.render('home', {
    topbidding: topbidding,
    top5price: top5price,
    top5endtime: top5endtime
  });
};
