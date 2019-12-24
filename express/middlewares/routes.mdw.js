const restrict=require('../middlewares/auth.mdw');
module.exports = function (app) {
  app.use('/account', require('../routes/admin/account.routes'));
  app.use('/categories', require('../routes/category.routes'));
  app.use('/admin/categories',restrict,require('../routes/admin/category.routes'));
}; 
