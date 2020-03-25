const { categories_data } = require('../../database/services/category');

const categories = async (request, response) => {
    try {
        const { page = 1 } = request.query;
        const categories = await categories_data(page);
        response.status(200).json(categories);
    } catch (error) {
        response.status(400).json(error);
    }
};

module.exports = {
    categories,
};
