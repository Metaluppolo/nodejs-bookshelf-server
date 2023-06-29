const helper = require('../helper');
const db = require('./db.service');


async function getUsers() {
    const sql = "SELECT * FROM user";
    const params = [];
    const result = await db.query(sql, params);
    const data = helper.emptyOrRows(result);
    const meta = { };

    return { data, meta };
}


module.exports = { getUsers }