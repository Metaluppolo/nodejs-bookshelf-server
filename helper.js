function emptyOrRows(rows) {
    if (!rows) {
        return [];
    }
    return rows;
}

function getOffset(currentPage = 1, rowsPerPage) {
    return (currentPage - 1) * [rowsPerPage];
}


module.exports = { getOffset, emptyOrRows }