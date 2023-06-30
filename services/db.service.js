const config = require('../config');
const mysql = require('mysql2/promise');

let connection;
async function connect() {
    if (!connection)
        connection = await mysql.createConnection(config.db);
}

// Connect to MySQL database and execute query
async function query(sql, params) {
    await connect();
    const [results, ] = await connection.execute(sql, params);
    return results;
}



module.exports = { query }