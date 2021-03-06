const bcrypt = require('bcryptjs');
const moment = require('moment');
const userModel = require('../../models/user.model');
const request = require('request');
module.exports.vwregister = async (req, res) => {
    res.render('vwAccount/register', {
        isExistMail: req.session.isExistMail,
        isExistUserName: req.session.isExistUserName
    });
    req.session.isExistMail = false;
    req.session.isExistUserName = false;
};

module.exports.register = async (req, res) => {
    if (req.body['g-recaptcha-response'] === undefined || req.body['g-recaptcha-response'] === '' || req.body['g-recaptcha-response'] === null) {
        return res.send("Please select captcha first");
    }
    const secretKey = "6LcGvswUAAAAAFBGmULXcKknj7TK28J4UGUQx2AD";

    const verificationURL = "https://www.google.com/recaptcha/api/siteverify?secret=" + secretKey + "&response=" + req.body['g-recaptcha-response'] + "&remoteip=" + req.connection.remoteAddress;

    request(verificationURL, async (error, response, body) => {
        body = JSON.parse(body);

        if (body.success !== undefined && !body.success) {
            return res.send("Failed captcha verification");
        }
        delete req.body['g-recaptcha-response'];
        const [rows, rowsUserName] = await Promise.all([
            userModel.checkEmail(req.body.f_Email),
            userModel.checkUserName(req.body.f_UserName)
        ])

        req.session.isExistMail = false;
        req.session.isExistUserName = false;
        if (rowsUserName.length > 0)
            req.session.isExistUserName = true;
        else {
            if (rows.length > 0) {
                req.session.isExistMail = true;
            }
            else {
                console.log("dang ki");
                const N = 10;
                const hash = bcrypt.hashSync(req.body.raw_password, N);
                const dob = moment(req.body.dob, 'DD/MM/YYYY').format('YYYY-MM-DD');
                const entity = req.body;
                entity.f_Password = hash;
                entity.f_DOB = dob;
                delete entity.raw_password;
                delete entity.dob;

                console.log(entity)

                const result = await userModel.add(entity);
            }

        }

        res.redirect(req.headers.referer);

    });



};
module.exports.vwlogin = (req, res) => {
    res.render('vwAccount/login', { layout: false })
};

module.exports.login = async (req, res) => {

    req.session.flag = 2;
    const user = await userModel.singleByUsername(req.body.username);
    if (user === null) return res.render('vwAccount/login', {
        layout: false,
        showError: true,
        err_message: 'Login failed'
    });
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
    entity = { UserID: req.session.authUser.f_ID, Mess: req.body.Mess };
    await userModel.addrequest(entity);
    res.redirect('/account/request');
};
module.exports.public_profile = async (req, res) => {
    const UserID = req.params.id;
    const user = await userModel.single(UserID);
    const point = await userModel.loadPoint(UserID);

    res.render('vwAccount/public_profile', { users: user[0], points: point[0] });

}
module.exports.vwchangepass = (req, res) => {
    console.log(req.session.flag2);
    res.render('vwAccount/changepass', {
        layout: 'profileLayout.hbs',
        isFailPass: req.session.flag2 == 1
    });
    req.session.flag2 = 0;
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
    req.session.flag2 = 0;

}
module.exports.viewpoint = async (req, res) => {
    userID = req.session.authUser.f_ID;
    point = await userModel.loadPoint(userID);
    feedback = await userModel.loadFeedback(req.session.authUser.f_ID);
    console.log(point);
    total = point[0].LikePoint / (point[0].DislikePoint + point[0].LikePoint);
    total = `${Math.round(total * 100)}%`
    res.render('vwAccount/feedbackpoint', {
        layout: 'profileLayout.hbs',
        points: point[0],
        totals: total,
        feedbacks: feedback
    })

}
module.exports.vwfeedback = (req, res) => {
    res.render('vwAccount/feedback');
}
module.exports.deleteUser = async (req, res) => {
    await userModel.del(req.body.id);
    res.redirect(req.headers.referer);

}
module.exports.test = (req, res) => {
    res.render('vwAccount/test', { layout: false });
}