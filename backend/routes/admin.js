const express = require('express');
const router = express.Router();
const Login = require('../controllers/admin/Login');

module.exports = passport => {
    router.get('/', Login.index);

    router.post('/login', passport.authenticate('admin'), Login.store);

    return router;
};
