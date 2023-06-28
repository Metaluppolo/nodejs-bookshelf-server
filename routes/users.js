const express = require('express');
const router = express.Router();
const usersService = require('../services/users.service')


router.get('/', async (req, res, next) => {
    try {
        res.json(await usersService.getUsers());
    } catch (err) {
        console.error(`Error while getting users: `, err.message);
        next(err);
    }
});


module.exports = router;