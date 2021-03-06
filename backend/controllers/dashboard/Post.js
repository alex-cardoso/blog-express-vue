const {
    posts_with_user,
    store: store_post,
    destroy: destroy_post,
    update: update_post,
} = require('../../database/services/post');
const { validationResult } = require('express-validator');
const { errors_validation } = require('../../helpers/errors');

const index = (request, response) => {
    response.render('../views/dashboard/posts', {
        layout: 'dashboard',
        title: 'Dashboard - Posts',
    });
};

const posts = async (request, response) => {
    try {
        const { page } = request.query;

        const posts = await posts_with_user(page);

        response.status(200).json(posts);
    } catch (error) {
        console.log(error);
    }
};

const store = async (request, response) => {
    try {
        const errors = validationResult(request);

        if (!errors.isEmpty()) {
            response.status(400).json(errors_validation(errors));
            return false;
        }

        const data = request.body;

        data['userId'] = request.user['id'];

        const stored = await store_post(data);

        stored.setDataValue('user', request.user);

        response.status(200).json(stored);
    } catch (error) {
        console.log(error);
    }
};

const destroy = async (request, response) => {
    try {
        const { post } = request.body;

        const deleted = await destroy_post(post);

        if (deleted) {
            return response.status(200).json('deleted');
        }
        response.status(400).json('not_deleted');
    } catch (error) {
        console.log(error);
    }
};

const update = (request, response) => {
    try {
        const errors = validationResult(request);

        if (!errors.isEmpty()) {
            response.status(400).json(errors_validation(errors));
            return false;
        }
        const post = request.body;

        const updated = update_post(post);

        response.status(200).json(updated);

        console.log(updated);
    } catch (error) {
        console.log(error);
        response.status(400).json(error);
    }
};

module.exports = {
    index,
    posts,
    store,
    update,
    destroy,
};
