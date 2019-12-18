var express=require('express');
var exphbs=require('express-handlebars');
var morgan=require('morgan')
require('express-async-errors')

var app=express();
app.use(morgan('dev'));
app.use(express.json());
app.use(express.urlencoded({
  extended:true
}));
app.engine('hbs',exphbs({
    defaultLayout: 'main.hbs',
    layoutsDir: 'views/_layouts'
})); 
app.set('view engine', 'hbs');
app.get('/',(req,res) =>
{
  res.render('home');
});
app.get('/about', (req, res) => {
    res.render('about');
  });

app.use('/categories', require('./routes/category.routes'));
app.use('/admin/categories', require('./routes/admin/category.routes'));

app.use((req,res,next)=>{
  // res.render('vwError/404');
  res.send('You\'re lost');
});

app.use((err,req,res,next)=>{
  // res.render('vwError/index');
console.error(err.stack);
res.status(500).send('View error on console.@');
});

const PORT = 3000;
app.listen(PORT, () => {
  console.log(`Server running at http://localhost:${PORT}`);
})