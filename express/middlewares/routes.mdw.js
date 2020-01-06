const restrict=require('../middlewares/auth.mdw');
module.exports = function (app) {
  app.use('/account', require('../routes/customer/account.routes'));
  app.use('/categories', require('../routes/customer/category.routes'));
  app.use('/products', require('../routes/customer/product.routes'));
  app.use('/admin/categories',restrict.beforeLogin,require('../routes/admin/category.routes'));
  app.use('/admin',restrict.beforeLogin,require('../routes/admin/general.routes'));
  app.use('/',require('../routes/customer/home.routes'));
}; 
