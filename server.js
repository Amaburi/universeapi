const express = require('express');
const cors = require('cors');
const bodyParser = require('body-parser');

const quizRoute = require('./router/quiz');
const jobsheetRoute = require('./router/jobsheet');
const universeRoute = require('./router/univdata');
const app = express();
const port = 5000;



app.use(cors());

app.use(express.json()) // for parsing application/json
app.use(express.urlencoded({ extended: true }))

const db = require('./models')
db.sequelize.sync()

app.get('/', (req, res) => {
    res.send('Hiiiiii made by Jy!');
});

app.use('/api/quizzes', quizRoute)
app.use('/api/jobsheet', jobsheetRoute)
app.use('/api/universe', universeRoute)

app.listen(port, () => console.log(`App listening on port http://localhost:${port}...`));