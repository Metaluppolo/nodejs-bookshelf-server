const helper = require('../helper');
const db = require('./db.service');


async function getBooks(user) {
    const sql = 
       `SELECT *
        FROM book b 
              INNER JOIN 
             bookxuser bxu 
              ON b.ISBN = bxu.book_ISBN
        WHERE bxu.user_email = ?`;
    const params =  [ user ];
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
       (?, ?, ?, 0)`;
    const params = [ book.user, book.isbn, new Date() ];
    const result = await db.query(sql, params);

    const message = (result.affectedRows) ? 'Book successfully added to bookshelf' : 'Error in adding book to bookshelf';

    return { message };
}

async function update(book, changes) {
    const sql =
        `UPDATE bookxuser 
        SET readings_counter = ?, review = ?, isReccomended = ?
        WHERE user_email = ? AND book_isbn = ?`;
    const params = [ changes.readingsCounter, changes.review, changes.isReccomended, book.user, book.isbn ];
    const result = await db.query(sql, params);
    
    const message = (result.affectedRows) ? 'Bookshelf info successfully updated' : 'Error in updating bookshelf info';

    return { message };
}

async function remove(book) {
    const sql =
        `DELETE FROM bookxuser WHERE user_email = ? AND book_isbn = ?`;
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