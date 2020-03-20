const errors_validation = errors => {
    let errors_validation = {};
    errors['errors'].forEach(error => {
        errors_validation[error.param] = error.msg;
    });
    return errors_validation;
};

module.exports = {
    errors_validation,
};
