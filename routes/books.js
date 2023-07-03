const express = require('express')
const router = express.Router()
const booksService = require('../services/books.service')


router.get('/', async (req, res, next) => {
    try {
        res.json(await booksService.getMissingBooks(req.query.missingTo, req.query.title, req.query.page, req.query.booksPerPage));
    } catch (err) {
        console.error(`Error while getting books: `, err.message);
        next(err);
    }
});

router.get('/:isbn', async (req, res, next) => {
    try {
        res.json(await booksService.getBook(req.params.isbn));
    } catch (err) {
        console.error(`Error while getting book with ISBN: `, err.message);
        next(err);
    }
});


module.exports = router