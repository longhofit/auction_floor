const restrict=require('../middlewares/auth.mdw');
module.exports = function (app) {
  app.use('/demo',restrict, require('../routes/demo.routes'));
  app.use('/account', require('../routes/account.routes'));
  app.use('/categories', require('../routes/category.routes'));
  app.use('/products', require('../routes/product.routes'));
  app.use('/admin/categories',restrict,require('../routes/admin/category.routes'));
}; 
