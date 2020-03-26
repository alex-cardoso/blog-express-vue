const express = require('express');

const router = express.Router();

// controllers
const Home = require('../controllers/site/Home');
const Post = require('../controllers/site/Post');

module.exports = passport => {
    router.get('/', Home.index);
    router.get('/posts/latest', Post.latest);

    return router;
};
