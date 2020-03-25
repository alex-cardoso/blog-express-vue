'use strict';
module.exports = {
    up: (queryInterface, Sequelize) => {
        return queryInterface.createTable('posts', {
            id: {
                allowNull: false,
                autoIncrement: true,
                primaryKey: true,
                type: Sequelize.INTEGER,
            },
            title: {
                type: Sequelize.STRING,
            },
            slug: { type: Sequelize.STRING },
            userId: {
                type: Sequelize.INTEGER,
                preferences: {
                    model: 'users',
                    key: 'id',
                },
                onDelete: 'CASCADE',
            },
            categoryId: {
                type: Sequelize.INTEGER,
                preferences: {
                    model: 'categories',
                    key: 'id',
                },
                onDelete: 'CASCADE',
            },
            post: {
                type: Sequelize.TEXT,
            },
            image: {
                allowNull: true,
                type: Sequelize.STRING,
            },
            createdAt: {
                allowNull: false,
                defaultValue: Sequelize.literal('CURRENT_TIMESTAMP'),
                type: 'TIMESTAMP',
            },
            updatedAt: {
                allowNull: false,
                defaultValue: Sequelize.literal(
                    'CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP'
                ),
                type: 'TIMESTAMP',
            },
        });
    },
    down: (queryInterface, Sequelize) => {
        return queryInterface.dropTable('posts');
    },
};
