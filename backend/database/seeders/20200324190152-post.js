const faker = require('faker');

module.exports = {
    up: (queryInterface, Sequelize) => {
        const title = faker.name.title();
        return queryInterface.bulkInsert(
            'posts',
            [
                {
                    title: title,
                    userId: Math.round(Math.random() * 5),
                    slug: faker.helpers.slugify(title.toLocaleLowerCase()),
                    categoryId: Math.round(Math.random() * 5),
                    post: faker.lorem.sentences(),
                },
            ],
            {}
        );
    },

    down: (queryInterface, Sequelize) => {
        return queryInterface.bulkDelete('posts', null, {});
    },
};
