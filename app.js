const express = require('express');
const exphbs = require('express-handlebars');
const cors = require('cors');
const helmet = require('helmet');
const path = require('path');

const app = express();

app.use(helmet());
app.use(cors());
app.use(express.json());
app.use(express.static('dist'));

app.engine('handlebars', exphbs({ defaultLayout: 'main' }));
app.set('view engine', 'handlebars');
app.set('views', path.join(__dirname, '/backend/views'));
console.log(path.join(__dirname, '/backend/views'));

app.use('/', require('./backend/routes'));

app.listen(3000);
