module.exports = (request, response, next) => {
    const user = request.user;
    const app = request.app;
    if (user !== undefined) {
        app.locals.name = user['name'];
        app.locals.last_name = user['last_name'];
        app.locals.is_authenticated = true;
        app.locals.is_admin = !!user['is_admin'];
    }

    next();
};
