const { Post, User } = require('../models');
const paginate = require('./paginate');

const posts_with_user = async (page = 1) => {
    try {
        const options = {
            attributes: ['id', 'title', 'slug', 'post', 'updatedAt'],
            include: [
                {
                    model: User,
                    as: 'user',
                },
            ],
            per_page: 20,
            page,
        };

        return paginate(Post, options);
    } catch (error) {
        console.log(error);
    }
};

const store = async data => {
    try {
        return await Post.create({
            ...data,
        });
    } catch (error) {
        console.log(error);
    }
};

const destroy = async id => {
    try {
        const deleted = await Post.destroy({
            where: {
                id,
            },
        });

        return deleted;
    } catch (error) {
        console.log(error);
    }
};

module.exports = {
    posts_with_user,
    store,
    destroy,
};
