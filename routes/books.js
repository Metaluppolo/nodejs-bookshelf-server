const express = require('express')
const router = express.Router()
const booksService = require('../services/books.service')


router.get('/:isbn', async (req, res, next) => {
    try {
        const { isbn } = req.params;
        res.json(await booksService.getBook(isbn));
    } catch (err) {
        console.error(`Error while getting book with ISBN ${isbn}: `, err.message);
        next(err);
    }
});


module.exports = router