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
    req.session.flag = 2;
  
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


    res.render('vwAccount/profile', {
        layout: 'profileLayout.hbs',
        isFailPass: req.session.flag == 1
    });
};
module.exports.updateprofile = async (req, res) => {
    entity = {
        f_ID: req.session.authUser.f_ID,
        f_UserName: req.session.authUser.f_UserName,
        f_Name: req.body.f_Name,
        f_Email: req.body.f_Email,
        f_DOB: req.body.dob,
        f_Password: req.body.f_Password
    }
    console.log(entity);


    const user = await userModel.singleByUsername(entity.f_UserName);
    const rs = bcrypt.compareSync(entity.f_Password, user.f_Password);
    if (rs === false) {
        req.session.flag = 1;
        return res.redirect(req.headers.referer);

    }
    req.session.flag = 0
    delete entity.f_Password;
    console.log(entity.f_ID);
    await userModel.patch(entity);
    req.session.authUser = await userModel.singleByUsername(entity.f_UserName);
    res.redirect(req.headers.referer);
}
module.exports.vwrequest = (req, res) => {
    res.render('vwAccount/request', { layout: 'profileLayout.hbs' });
}
module.exports.sendrequest = async (req, res) => {
    entity = { UserID: req.session.authUser.f_ID, UserName: req.session.authUser.f_UserName, Mess: req.body.Mess };
    await userModel.addrequest(entity);
    res.redirect('/account/request');
};
module.exports.public_profile = async (req, res) => {
    const UserID = req.params.id;
    const user = await userModel.single(UserID);

    res.render('vwAccount/public_profile', { users: user[0] });

}
module.exports.vwchangepass = (req, res) => {
    res.render('vwAccount/changepass', { 
        layout: 'profileLayout.hbs',
        isFailPass: req.session.flag2 == 1
 });
}
module.exports.changepass = async (req, res) => {

    const user = await userModel.singleByUsername(req.session.authUser.f_UserName);
    const rs = bcrypt.compareSync(req.body.oldpass, user.f_Password);
    if (rs === false) {
        req.session.flag2 = 1;
        console.log("saipass");
        return res.redirect(req.headers.referer);
    }
    else {
        req.session.flag2 = 0;
        entity = {
            f_ID: req.session.authUser.f_ID,
            f_Password: req.body.newpass

        }
        const N = 10;
        const hash = bcrypt.hashSync(entity.f_Password, N);
        entity.f_Password = hash;
        console.log(entity);
        await userModel.patch(entity);
        res.redirect(req.headers.referer);
    }

}
module.exports.viewpoint= async (req,res) => {
    userID=req.session.authUser.f_ID;
    point= await userModel.loadPoint(userID);
    feedback=  await userModel.loadFeedback(req.session.authUser.f_ID);
    console.log(feedback);
    res.render('vwAccount/feedbackpoint',{
        layout: 'profileLayout.hbs',
        points: point[0],
        feedbacks: feedback
    })
        
}
