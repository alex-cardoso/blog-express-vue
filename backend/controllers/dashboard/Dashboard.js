const index = (request, response) => {
  console.log(request.user['is_admin']);
    response.render('../views/dashboard/dashboard', {
        layout: 'dashboard',
        title: 'Dashboard',
    });
};

module.exports = {
    index,
};
