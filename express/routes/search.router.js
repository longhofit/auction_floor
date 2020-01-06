const express = require('express');
const router = express.Router();
const restrict=require('../../middlewares/auth.mdw');
const controller=require('../controllers/search.controller');
const helper = require('../helpers/helper');
router.get('/searchData', helper.getSearchData);
router.get('/search',controller.search, (res,req,next) => {

    var data = [];

    var ProName = req.session.ProName.replace(/!|@|%|\^|\*|\(|\)|\+|\=|\<|\>|\?|\/|,|\.|\:|\;|\'|\"|\&|\#|\[|\]|~|\$|_|`|-|{|}|\||\\/g," ");

    var dataPro = productsModel.searchFull(ProName,"","","",req.session.DateFrom,req.session.DateTo);
    for(i = 0; i < dataPro.length; i++){
        var temp = [];
        temp.push(dataPro[i].ProName);
        temp.push(dataPro[i].Price);
        temp.push(dataPro[i].PriceToBuy);
        data.add(temp);
    }

    Promise.all(
        [dataPro, 
            productsModel.searchFull(ProName,"","","",req.session.DateFrom,req.session.DateTo)
        ]


    console.log(data);
    res.render('search',
        {
            searchData: data
        });



});

module.exports = router;