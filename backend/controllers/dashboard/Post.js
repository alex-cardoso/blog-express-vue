const index = (request, response) => {
    response.render('../views/dashboard/posts', {
        layout: 'dashboard',
        title: 'Dashboard - Posts',
    });
};

module.exports = {
    index,
};
