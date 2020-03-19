const index = (request, response) => {
    response.render('../views/admin/login', {
        layout: 'admin',
        title: 'Login',
    });
};

const store = (request, response) => {
    try {
        response.status(200).json('logged');
    } catch (error) {
        response.status(400).json(error);
    }
};

module.exports = { index, store };
