const productsModel = require('../models/product.model');
module.exports.search = async (req, res) => {
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
    console.log(data);
    res.render('search',
        {
            searchData: data
        });
}