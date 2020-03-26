const { users_data } = require('../../database/services/user');

const index = (request, response) => {
    response.render('../views/dashboard/users', {
        layout: 'dashboard',
        title: 'Dashboard - Users',
    });
};

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
    index,
    users,
};
