const express = require('express');
const router = express.Router();
const Dashboard = require('../controllers/dashboard/Dashboard');
const Post = require('../controllers/dashboard/Post');
const check_if_is_admin = require('../middlewares/check_if_is_admin');
const { validations } = require('../middlewares/validations/post');

router.use(check_if_is_admin);

router.get('/', Dashboard.index);
router.get('/posts', Post.index);
router.get('/posts/data', Post.posts);
router.post('/post/store', validations, Post.store);

module.exports = router;
