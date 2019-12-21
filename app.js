var express = require('express');

var exphbs = require('express-handlebars');

var morgan = require('morgan');

var path = require('path');

require('express-async-errors');

// Bootstrap, Slick, Fontawesome path
var css = [
  'https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css',
  '../assets/slick-1.8.1/slick/slick.css',
  '../assets/slick-1.8.1/slick/slick-theme.css',
  'https://use.fontawesome.com/releases/v5.0.6/css/all.css',
  'https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css',
  'https://use.fontawesome.com/releases/v5.0.6/css/all.css'
];

// Javascript path
var js = [
  'https://code.jquery.com/jquery-3.3.1.min.js',
  'https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js',
  'https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js',
  'https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js',
  '../assets/slick-1.8.1/slick/slick.min.js',
  'https://cdnjs.cloudflare.com/ajax/libs/tilt.js/1.2.1/tilt.jquery.min.js',
  '../js/script.js',
  '../js/slideshow.js'
];

var app = express();

app.use(morgan('dev'));

app.use(express.json());

app.use(
  express.urlencoded({
    extended: true
  })
);

app.engine(
  'hbs',
  exphbs({
    defaultLayout: 'main.hbs',
    layoutsDir: 'views/_layouts',
    // partialsDir: 'views/partials'
    partialsDir: 'views/partials',
    extname: 'hbs'
  })
);

app.set('view engine', 'hbs');

app.get('/', (req, res) => {
  res.render('Home/home', {
    title: 'Home',
    customCss: ['style.css', 'footer.css', 'responsive.css'],
    css,
    js
  });
});

app.get('/about', (req, res) => {
  res.render('about');
});

app.get('/category', (req, res) => {
  res.render('ProductByCategory/product-by-category', {
    title: 'Category',
    customCss: ['style-laptop.css', 'footer.css', 'responsive.css'],
    css,
    js
  });
});

app.get('/product-detail', (req, res) => {
  res.render('ProductDetail/product-detail', {
    title: 'Product detail',
    customCss: [
      'style-laptop.css',
      'footer.css',
      'responsive.css',
      'slideshow.css'
    ],
    css,
    js
  });
});

app.get('/bidder/account', (req, res) => {
  res.render('Bidder/account', {
    title: 'Account',
    customCss: ['style-laptop.css', 'footer.css', 'responsive.css'],
    css,
    js
  });
});

app.get('/bidder/bidding', (req, res) => {
  res.render('Bidder/bidding', {
    title: 'Bidding',
    customCss: ['style-laptop.css', 'footer.css', 'responsive.css'],
    css,
    js
  });
});

app.get('/bidder/feedback', (req, res) => {
  res.render('Bidder/feedback', {
    title: 'Feedback',
    customCss: ['style-laptop.css', 'footer.css', 'responsive.css'],
    css,
    js
  });
});

app.get('/bidder/request', (req, res) => {
  res.render('Bidder/request', {
    title: 'Request',
    customCss: ['style-laptop.css', 'footer.css', 'responsive.css'],
    css,
    js
  });
});

app.get('/bidder/watchlist', (req, res) => {
  res.render('Bidder/watchlist', {
    title: 'Watchlist',
    customCss: ['style-laptop.css', 'footer.css', 'responsive.css'],
    css,
    js
  });
});

app.get('/bidder/win-product', (req, res) => {
  res.render('Bidder/win-product', {
    title: 'Win product',
    customCss: ['style-laptop.css', 'footer.css', 'responsive.css'],
    css,
    js
  });
});

app.get('/admin/permission', (req, res) => {
  res.render('Admin/permission', {
    title: 'Admin',
    customCss: ['style-laptop.css', 'footer.css', 'responsive.css'],
    css,
    js
  });
});

app.use(express.static(path.join(__dirname, '/public')));

//app.use('/categories', require('./routes/category.routes'));

//app.use('/admin/categories', require('./routes/admin/category.routes'));

app.use((req, res, next) => {
  // res.render('vwError/404');
  res.send("You're lost");
});

app.use((err, req, res, next) => {
  // res.render('vwError/index');
  console.error(err.stack);
  res.status(500).send('View error on console.@');
});

const PORT = 3000;
app.listen(PORT, () => {
  console.log(`Server running at http://localhost:${PORT}`);
});
