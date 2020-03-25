const { Category } = require('../../database/models');
const paginate = require('./paginate');

const categories_data = async page => {
    try {
        const options = {
            attributes: ['id', 'name', 'slug', 'updatedAt'],
            per_page: 20,
            page,
        };

        return paginate(Category, options);
    } catch (error) {
        console.log(error);
        return error;
    }
};

module.exports = { categories_data };
