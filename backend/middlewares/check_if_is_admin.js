const check_if_is_admin = (request, response, next) => {
    if (!request.user || request.user.is_admin !== 1) {
        response.redirect('/admin');
        return false;
    }

    next();
};

module.exports = check_if_is_admin;
