const express = require('express');
const exphbs = require('express-handlebars');
const hbs_sections = require('express-handlebars-sections');
const session = require('express-session');
const morgan = require('morgan');
const numeral = require('numeral');
const helpers = require('./helpers/helper');
require('express-async-errors');


const app = express();
app.listen(process.env.PORT || 3000, () => {
    console.log(`Server running at http://localhost:${process.env.PORT}`);
});
app.get('/', (req, res) => {
 
    res.send("asdas");
  });