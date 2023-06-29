const helper = require('../helper');
const db = require('./db.service');


async function getBook(isbn) {
    const sql = 
       `SELECT *
        FROM book b 
        WHERE b.ISBN = ?`;
    const params = [ isbn ];
    const result = await db.query(sql, params);
    const data = helper.emptyOrRows(result);
    const meta = { };

    return { data, meta };
}


module.exports = { 
    getBook 
}