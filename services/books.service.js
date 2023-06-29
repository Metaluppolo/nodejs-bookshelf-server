const helper = require('../helper');
const db = require('./db.service');


async function getBookList(page = 1, booksPerPage = 10) {
    const offset = helper.getOffset(page, booksPerPage);
    const sql = `SELECT * FROM book LIMIT ${offset}, ${booksPerPage}`;
    const params = [ ];
    const result = await db.query(sql, params);
    const data = helper.emptyOrRows(result);
    const meta = { page };

    return { data, meta };
}

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
    getBookList,
    getBook
}