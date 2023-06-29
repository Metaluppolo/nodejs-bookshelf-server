const helper = require('../helper');
const db = require('./db.service');


async function getBookshelf(user) {
    const sql = 
       `SELECT *
        FROM book b 
              INNER JOIN 
             bookxuser bxu 
              ON b.ISBN = bxu.book_ISBN
        WHERE bxu.user_email = ?`;
    const params =  [ user ];
    const rows = await db.query(sql, params);
    const data = helper.emptyOrRows(rows);
    const meta = { };

    return { data, meta };
}


module.exports = { 
    getBookshelf,  
}