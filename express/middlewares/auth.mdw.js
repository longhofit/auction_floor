module.exports.beforeLogin = (req, res, next) => {
  if (req.session.isAuthenticated === false) {
    console.log(`ris ${req.originalUrl}`);
    return res.redirect(`/account/login?retUrl=${req.originalUrl}`);
  }
  next();
};

module.exports.beforePost = (req, res, next) => {
  if (req.session.isAuthenticated === false) {
    console.log(`ris ${req.session.beforePost}`);
    return res.redirect(`/account/login?retUrl=${req.session.beforePost}`);
  }
  next();
}
