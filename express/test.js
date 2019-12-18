const mysql = require('mysql');
const express = require('express');
var app = express();

var mysqlconnection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '123456',
    database: 'employeedb'
});


mysqlconnection.connect(function (err) {
    //nếu có nỗi thì in ra
    if (err) console.log('khong thanh cong' + JSON.stringify(err));
    //nếu thành công
    else {
        var sql = "SELECT * FROM employyye";

        mysqlconnection.query(sql, function (err, results, fields) {
            if (err) throw err;
            console.log(results[0].Name);



        });
       


    }

});
