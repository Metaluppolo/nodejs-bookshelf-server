const express = require('express');
const router = express.Router();
const bookshelfService = require('../services/bookshelf.service')


router.get('/:user', async (req, res, next) => {
    try {
        const { user } = req.params;
        res.json(await bookshelfService.getBookshelf(user));
    } catch (err) {
        console.error(`Error while getting books of user ${user}: `, err.message);
        next(err);
    }
});


module.exports = router;