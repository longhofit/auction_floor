const bcrypt = require('bcryptjs');
const moment = require('moment');
const userModel = require('../../models/user.model');
module.exports.vwregister = async (req, res) => {
    res.render('vwAccount/register');
};

module.exports.register = async (req, res) => {
    const N = 10;
    const hash = bcrypt.hashSync(req.body.raw_password, N);
    const dob = moment(req.body.dob, 'DD/MM/YYYY').format('YYYY-MM-DD');
    const entity = req.body;
    entity.f_Password = hash;
    entity.f_DOB = dob;
    delete entity.raw_password;
    delete entity.dob;
    const result = await userModel.add(entity);
    res.render('vwAccount/register');

};
module.exports.vwlogin = (req, res) => {
    res.render('vwAccount/login', { layout: false })
};

module.exports.login = async (req, res) => {
    // const user={
    //   username:req.body.username,
    //   password=req.body.password
    // };
    const user = await userModel.singleByUsername(req.body.username);
    if (user === null) throw new Error('Invalid username or password.');
    const rs = bcrypt.compareSync(req.body.password, user.f_Password);
    if (rs === false)
        return res.render('vwAccount/login', {
            layout: false,
            showError: true,
            err_message: 'Login failed'
        });
    delete user.f_Password;
    req.session.isAuthenticated = true;
    req.session.authUser = user;

    const url = req.query.retUrl || '/';
    res.redirect(url);
};




module.exports.logout = (req, res) => {
    req.session.isAuthenticated = false;
    req.session.authUser = null;
    res.redirect(req.headers.referer);
}
module.exports.profile = (req, res) => {


    res.render('vwAccount/profile', { layout: 'profileLayout.hbs' });
};
module.exports.vwrequest = (req, res) => {
    res.render('vwAccount/request', { layout: 'profileLayout.hbs' });
}
module.exports.sendrequest = async (req, res) => {
    entity = { UserID: req.session.authUser.f_ID, UserName: req.session.authUser.f_UserName, Mess: req.body.Mess };
    await  userModel.addrequest(entity);
    res.redirect('/account/request');
};
module.exports.public_profile = async (req,res) =>{
    const UserID = req.params.id;
    const user= await userModel.single(UserID);
    
    res.render('vwAccount/public_profile',{users:user[0] });
    
}