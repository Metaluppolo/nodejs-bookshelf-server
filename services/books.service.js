const helper = require('../helper');
const db = require('./db.service');


async function getBook(isbn) {
    const sql = 
       `SELECT *
        FROM book b 
        WHERE b.ISBN = ?`;
    const params = [ isbn ];
    const rows = await db.query(sql, params);
    const data = helper.emptyOrRows(rows);
    const meta = { };

    return { data, meta };
}


module.exports = { 
    getBook 
}