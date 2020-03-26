const index = (request, response) => {
    response.render('../views/site/home', {
        layout: 'main',
        title: 'Blog',
    });
};

module.exports = {
    index,
};
