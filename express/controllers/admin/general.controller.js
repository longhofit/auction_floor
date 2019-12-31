const userModel=require('../../models/user.model');
module.exports.vwmanagerUser= (req,res) =>{
    res.render('vwAccount/profile',{layout: 'adminLayout.hbs'});
}
module.exports.vwaccept = async (req,res) =>
{   request= await userModel.loadrequest();
    console.log(request);
    res.render('vwAccount/accept',{request,layout: 'adminLayout.hbs'});
}
module.exports.accept =async (req,res) => {
    [result,result2]= await Promise.all([
        userModel.accep_request(req.body.UserID),
        userModel.updateSeller(req.body.UserID)
    ]);
    res.redirect('/admin/accept');

}
module.exports.vwlist = async (req,res) =>{
    result= await userModel.all();
    res.render('vwAccount/userlist',{users: result,layout: 'adminLayout.hbs'});
}