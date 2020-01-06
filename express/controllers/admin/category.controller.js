const categoryModel = require('../../models/category.model');

module.exports.catIndex = async (req, res) => {
    // try {
    const rows = await categoryModel.all();
    res.render('vwCategories/index', {
        categories: rows,
        empty: rows.length === 0,
        layout: 'adminLayout.hbs'
    });


};
module.exports.vwadd = (req, res) => {
    res.render('vwCategories/add',{layout: 'adminLayout.hbs'});

};

module.exports.add = async (req, res) => {
    const result = await categoryModel.add(req.body);
    res.render('vwCategories/add');

};



module.exports.err = (req, res) => {
    throw new Error('error occured');
} 

module.exports.vwEdit = async (req, res) => {
    const rows = await categoryModel.single(req.params.id);
    if (rows.length === 0) {
        throw new Error('Invalid category id');
    }
    // const c={
    //     CatID: req.params.id,
    //     CatName: 'unknown'
    // }
    res.render('vwAccount/edit', {
        category: rows[0],
        layout: 'adminLayout.hbs'

    });

};
module.exports.vwEdit2 =  (req, res) => {
   
    res.render('vwDemo/upload',{layout: 'adminLayout.hbs'});

};




module.exports.patch = async (req, res) => {

    const result = await categoryModel.patch(req.body);
    //  console.log(result);
    // res.render('vwCategories/add');
    res.redirect('/admin/categories');

};


module.exports.del = async (req, res) => {


    const result = await categoryModel.del(req.body.CatID);
    //  console.log(result);
    // res.render('vwCategories/add');
    res.redirect('/admin/categories');


};

