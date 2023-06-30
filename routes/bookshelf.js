const express = require('express');
const router = express.Router();
const bookshelfService = require('../services/bookshelf.service')


router.get('/:user', async (req, res, next) => {
    try {
        res.json(await bookshelfService.getBooks(req.params.user, req.query.book));
    } catch (err) {
        console.error(`Error while getting books in bookshelf: `, err.message);
        next(err);
    }
});

router.post('/', async (req, res, next) => {
    try {
        res.json(await bookshelfService.create(req.body));
    } catch (err) {
        console.error(`Error while adding a book to bookshelf: `, err.message);
        next(err);
    }
});

router.put('/:user/:isbn', async (req, res, next) => {
    try {
        res.json(await bookshelfService.update(req.params, req.body));
    } catch (err) {
        console.error(`Error while updating bookshelf info: `, err.message);
        next(err);
    }
});

router.delete('/:user/:isbn', async (req, res, next) => {
    try {
        res.json(await bookshelfService.remove(req.params));
    } catch (err) {
        console.error(`Error while removing a book from bookshelf: `, err.message);
        next(err);
    }
});


module.exports = router;