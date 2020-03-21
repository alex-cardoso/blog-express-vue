const { Post, User } = require('../models');
const paginate = require('./paginate');

const posts_with_user = async (user, page = 1) => {
    const options = {
        attributes: ['id', 'title', 'slug'],
        include: [
            {
                model: User,
                as: 'user',
            },
        ],
        where: {
            userId: user,
        },
        per_page: 20,
        page,
    };

    return paginate(Post, options);
};

const store = async data => {
    try {
        const stored = await Post.create({
            ...data,
        });

        return stored;
    } catch (error) {
        console.log(error);
    }
};

module.exports = {
    posts_with_user,
    store,
};
