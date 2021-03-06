const express = require('express');
const router = express.Router();
const Dashboard = require('../controllers/dashboard/Dashboard');
const User = require('../controllers/dashboard/User');
const Post = require('../controllers/dashboard/Post');
const Category = require('../controllers/dashboard/Category');
const check_if_is_admin = require('../middlewares/check_if_is_admin');
const { validations } = require('../middlewares/validations/post');

router.use(check_if_is_admin);

router.get('/', Dashboard.index);
router.get('/posts', Post.index);
router.get('/posts/data', Post.posts);
router.post('/post', validations, Post.store);
router.put('/post', validations, Post.update);
router.delete('/post', Post.destroy);
router.get('/users/data', User.users);
router.get('/categories/data', Category.categories);
router.get('/users', User.index);

module.exports = router;
