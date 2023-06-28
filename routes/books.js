const express = require('express')
const router = express.Router()


router.get('/', (req, res) => {
    res.json({
        "statusCode": 200,
        "statusMessage": "SUCCESS"
    })
})


module.exports = router