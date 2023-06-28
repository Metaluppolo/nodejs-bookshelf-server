const config = require('../config');
const helper = require('../helper');
const db = require('./db.service');


async function getUsers() {
    const sql = "SELECT * FROM bookshelf.user"
    const rows = await db.query(sql);
    const data = helper.emptyOrRows(rows);
    const meta = { };

    return { data, meta };
}


module.exports = { getUsers }