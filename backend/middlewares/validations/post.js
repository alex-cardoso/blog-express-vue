const { body } = require('express-validator');

const validations = [
    body('title')
        .not()
        .isEmpty()
        .trim()
        .withMessage('Digite o titulo do post.')
        .escape(),
    body('slug')
        .not()
        .isEmpty()
        .trim()
        .withMessage('Digite o slug do post.')
        .escape(),
    body('post')
        .not()
        .isEmpty()
        .trim()
        .withMessage('Digite um texto para seu post.')
        .escape(),
];

module.exports = {
    validations,
};
