const helper = require('../helper');
const db = require('./db.service');


async function getBookList(missingTo = "", page = 1, booksPerPage = 100) {
    const offset = helper.getOffset(page, booksPerPage);

    const sql = 
        `SELECT * 
        FROM book b
        WHERE NOT EXISTS 
            (SELECT * 
            FROM bookxuser bxu 
            WHERE deletion_date IS NULL AND bxu.book_ISBN = b.ISBN AND bxu.user_email = ?)
        LIMIT ${offset}, ${booksPerPage}`
    const params = [ missingTo ];
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