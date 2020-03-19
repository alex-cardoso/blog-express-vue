const index = (request, response) => {
    response.render('../views/dashboard/dashboard', {
        layout: 'dashboard',
        title: 'Dashboard',
    });
};

module.exports = {
    index,
};
