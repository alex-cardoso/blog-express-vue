const express = require('express');
const express_handlebars = require('express-handlebars');
const cors = require('cors');
const helmet = require('helmet');
const path = require('path');
const passport = require('passport');
const passport_admin = require('./passport_admin');
const session = require('express-session');
const variables_to_template = require('./middlewares/variables_to_templates');

const app = express();

app.use(helmet());
app.use(cors());
app.use(express.json());

app.use(express.static(path.join(__dirname, '../', 'dist/')));
app.engine('handlebars', express_handlebars({ defaultLayout: 'main' }));
app.set('view engine', 'handlebars');
app.set('views', path.join(__dirname, '/views'));

passport_admin(passport);
app.use(
    session({
        secret: 'my_super_secret_secret',
        resave: false,
        saveUninitialized: false,
        cookie: {
            maxAge: 10800000,
            sameSite: true,
            secure: false,
        },
    })
);

app.use(passport.initialize());
app.use(passport.session());

app.use(variables_to_template);
app.use('/', require('./routes/routes'));
app.use('/admin', require('./routes/admin')(passport));
app.use('/dashboard', require('./routes/dashboard'));

app.listen(3000);
