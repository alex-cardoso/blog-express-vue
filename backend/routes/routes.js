const express = require('express');

const router = express.Router();

router.get('/', (request, response) => {
    response.render('../views/site/home', {
        layout: 'main',
        title: 'Home',
    });
});

module.exports = router;
