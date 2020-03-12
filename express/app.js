const express = require('express');
const exphbs = require('express-handlebars');
const hbs_sections = require('express-handlebars-sections');
const session = require('express-session');
const morgan = require('morgan');
const numeral = require('numeral');
const helpers=require('./helpers/helper');
require('express-async-errors');


const app = express();
app.use(morgan('dev'));
app.use(express.json());
app.use(express.urlencoded({
  extended: true
}));

app.use(session({
  secret: 'keyboard cat',
  resave: false,
  saveUninitialized: true,
  // cookie: {
  //     secure: true
  // }
}))
app.use(express.static('public'));
app.engine('hbs', exphbs({
  defaultLayout: 'main.hbs',
  layoutsDir: 'views/_layouts',
  helpers: {
    section: hbs_sections(),
    format: val => numeral(val).format('0,0'),
    mask: name => helpers.markString(name,6,10,10,"*",true)
    
  },


}));
app.set('view engine', 'hbs');


// app.use(require('./middlewares/locals.mdw'));

require('./middlewares/locals.mdw')(app);
require('./middlewares/routes.mdw')(app);





app.use((req, res, next) => {
  // res.render('vwError/404');
  res.send('You\'re lost');
});

app.use((err, req, res, next) => {
  // res.render('vwError/index');
  console.error(err.stack);
  res.status(500).send('View error on console.@');
});

const PORT = 5000;
app.listen(PORT , () => {
  console.log(`Server running at http://localhost:${PORT}`);
})
