const faker = require('faker');

module.exports = {
    up: (queryInterface, Sequelize) => {
        let inserted;
        for (let i = 1; i <= 30; i++) {
            const title = faker.name.title();
            inserted = queryInterface.bulkInsert(
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
        }
        return inserted;
    },

    down: (queryInterface, Sequelize) => {
        return queryInterface.bulkDelete('posts', null, {});
    },
};
