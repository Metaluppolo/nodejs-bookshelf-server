const mysql = require('mysql');

const pool = mysql.createPool(
    {
        host: "localhost",
        port: 3306,
        user: "root",
        password: "",
        database: "bookshelf",
        connectionLimitLimit: 10
    }
);


// TEST CONNECTION
pool.query(`SELECT * FROM bookshelf.user`, (err, res) => {
    return console.log( err ? err : res );
})