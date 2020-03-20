const { Post, User } = require('../models');

const posts_with_user = async () => {
    return await Post.findAll({
        include: [
            {
                model: User,
                as: 'user',
            },
        ],
    });
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
