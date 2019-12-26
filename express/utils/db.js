const mysql = require('mysql');
const util=require('util');
const pool=mysql.createPool({
    connectionLimit: 50,
    host: 'localhost',
    user: 'root',
    password: '123456',
    database: 'auctiondb'

});
const mysql_query=util.promisify(pool.query).bind(pool);

module.exports = {
    load: sql=>mysql_query(sql),
    add : (tableName, entity) => {mysql_query(`insert into ${tableName} set ?`,entity)},
    del : (tableName, condition) => mysql_query(`delete from ${tableName} where ?`,condition),
    patch : (tableName, entity,condition) => mysql_query(`update ${tableName} set ? where ?`,[entity,condition]),
    max:(tableName,columnName) => mysql_query(`SELECT MAX(${columnName}) as max FROM ${tableName};`)

  
};
  // load: sql => new Promise((done,fail)=>{
    //         pool.query(sql,  (err, results, fields) => {
    //             if (err){
    //                 fail(err);
    //             }
    //             else{
    //                 done(results);
    //             }
    //         });
    //   })

   
    // load: (sql,fn_done) => {
    //     var mysqlconnection = mysql.createConnection({
    //         host: 'localhost',
    //         user: 'root',
    //         password: '123456',
    //         database: 'employeedb'
    //     });
    
    //     mysqlconnection.connect(function (err) {
    //         //nếu có nỗi thì in ra
    //         if (err) console.log('khong thanh cong' + JSON.stringify(err));
    //         //nếu thành công
    //         mysqlconnection.query(sql,  (err, results, fields) => {
    //             if (err) throw err;

    //             fn_done(results); 

    //             mysqlconnection.end();
    //         });
    //     });
    // }
