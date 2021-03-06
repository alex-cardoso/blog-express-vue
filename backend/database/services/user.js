const { User } = require('../../database/models');
const paginate = require('./paginate');

const users_data = async page => {
    try {
        const options = {
            attributes: ['name', 'last_name', 'email', 'updatedAt'],
            per_page: 15,
            page,
        };

        return paginate(User, options);
    } catch (error) {
        console.log(error);
        return error;
    }
};

module.exports = { users_data };
