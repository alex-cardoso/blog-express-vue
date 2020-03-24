const { users_data } = require('../../database/services/user');

const users = async (request, response) => {
    try {
        const { page = 1 } = request.query;
        const users = await users_data(page);
        response.status(200).json(users);
    } catch (error) {
        console.log(error);
    }
};

module.exports = {
    users,
};
