const express = require('express');
const productModel = require('../models/product.model');
const config=require('../config/default.json');
const router = express.Router();
router.get('/:id', async (req, res) => {
    // for (const c of res.locals.lcCategories) {
    //     if (c.proId === +req.params.id) {
    //         c.isActive = true;
    //     } 
    // }
    const proId=req.params.id;
    const rows = await productModel.single(proId);
   
    res.render('vwProducts/detail', {
        products: rows[0]

    });

  //  const rows = await productModel.allByCat(req.params.id);
    // res.render('vwProducts/allByCat', {
    //     products: rows,
    //     empty: rows.length === 0
    // });


});

module.exports = router;