const mysql = require('mysql');
const util = require('util');
const pool = mysql.createPool({
    connectionLimit: 50,
    host: 'localhost',
    user: 'root',
    password: '123456',
    database: 'online_aucdb'

});
const mysql_query = util.promisify(pool.query).bind(pool);

module.exports = {
    load: sql => mysql_query(sql),
    add: (tableName, entity) => { mysql_query(`insert into ${tableName} set ?`, entity) },
    del: (tableName, condition) => mysql_query(`delete from ${tableName} where ?`, condition),
    patch: (tableName, entity, condition) => mysql_query(`update ${tableName} set ? where ?`, [entity, condition]),
    max: (tableName, columnName) => mysql_query(`SELECT MAX(${columnName}) as max FROM ${tableName};`),



};
