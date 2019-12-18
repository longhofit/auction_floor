const express = require('express');
const categoryModel = require('../../models/category.model');
const router = express.Router();

router.get('/:id/products', async (req, res) => {

        const rows = await productModel.all();
        // res.render('vwCategories/index', {
        //     categories: rows,
        //     empty: rows.length === 0
        // });


});

module.exports = router;