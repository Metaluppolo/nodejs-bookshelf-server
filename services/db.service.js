const config = require('../config');
const mysql = require('mysql2/promise');


// Connect to MySQL database and execute query
async function query(sql, params) {
    const connection = await mysql.createConnection(config.db);
    const [results, ] = await connection.execute(sql, params);

    return results;
}


module.exports = { query }