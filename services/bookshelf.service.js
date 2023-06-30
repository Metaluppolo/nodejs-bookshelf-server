const helper = require('../helper');
const db = require('./db.service');


async function getBooks(user, book = null) {
    let sql = 
       `SELECT *
        FROM book b 
              INNER JOIN 
             bookxuser bxu 
              ON b.ISBN = bxu.book_ISBN
        WHERE bxu.deletion_date IS NULL AND bxu.user_email = ?`;
    
    let params = [ user ];
    if (book) {
        sql += ` AND bxu.book_isbn = ?`;
        params.push(book);
    }
    const result = await db.query(sql, params);
    const data = helper.emptyOrRows(result);
    const meta = { };

    return { data, meta };
}

async function create(book) {
    const sql = 
       `INSERT INTO bookxuser 
       (user_email, book_ISBN, addition_date, readings_counter) 
       VALUES
       (?, ?, CURRENT_TIME(), 0)
       ON DUPLICATE KEY UPDATE addition_date = CURRENT_TIME(), deletion_date = NULL`;
    const params = [ book.user, book.isbn ];
    const result = await db.query(sql, params);

    const message = (result.affectedRows) ? 'Book successfully added to bookshelf' : 'Error in adding book to bookshelf';

    return { message };
}

async function update(book, changes) {
    const sql =
        `UPDATE bookxuser 
        SET readings_counter = ?, review = ?, isReccomended = ?
        WHERE deletion_date IS NULL AND user_email = ? AND book_isbn = ?`;
    const params = [ changes.readingsCounter, changes.review, changes.isReccomended, book.user, book.isbn ];
    const result = await db.query(sql, params);
    
    const message = (result.affectedRows) ? 'Bookshelf info successfully updated' : 'Error in updating bookshelf info';

    return { message };
}

async function remove(book) {
    const sql = 
        `UPDATE bookxuser 
        SET deletion_date = CURRENT_TIME() 
        WHERE deletion_date IS NULL AND user_email = ? AND book_isbn = ?`
    const params = [ book.user, book.isbn ];
    const result = await db.query(sql, params);
    
    const message = (result.affectedRows) ? 'Book successfully removed from bookshelf' : 'Error in removing book from bookshelf';

    return { message };
}


module.exports = { 
    getBooks, 
    create,
    update,
    remove
}