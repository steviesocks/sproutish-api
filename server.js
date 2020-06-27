const express = require('express');
const knex = require('knex');
const cors = require('cors');

const db = knex({
    client: 'pg',
        connection: {
        host : '127.0.0.1',
        user : 'stephenstocking',
        password : '',
        database : 'book-library'
    }
});

const app = express();

app.use(express.json());
app.use(cors());

app.get('/', (req, res)=> {
    res.send('it is working!');
})

app.get('/browse', (req, res)=> {
    db.select('*').from('books')
        .then(response => {
            response.length
                ? res.json(response)
                : res.status(400).json('whoopsie daisy! something went wrong...')
        })
        .catch(err => console.log('we caught an error'))
})


app.post('/player', (req, res) => {
    const { id } = req.body;
    db.select('*').from('books')
    .where({
        id: id
    })
    .then(result => {
        result.length 
        ? res.json(result)
        : res.status(400).json('book not found')
    })
    .catch(err => res.status(400).json('bad request'))
})


app.listen(process.env.PORT || 3000, () => {
    console.log(`Listening on port ${process.env.PORT}`);
    })