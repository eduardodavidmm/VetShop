const express = require('express');
const app = express();
const http = require('http');
const server = http.createServer(app);
const logger = require('morgan');
const cors = require('cors');
const res = require('express/lib/response');

const port = process.env.PORT || 3000;

app.use(logger('dev'));

app.use(express.urlencoded ({
    extended: true
}));

app.use(cors());

app.disable('x-powered-by');

app.set('port', port);

server.listen(3000, '192.168.17.227' || 'localhost', function() {
    console.log('aplicacion nodejs ' + process.pid + ' Iniciada')
});

app.get('/', (req, res) => {
    res.send('Backend Root');
})

app.get('/test', (req, res) => {
    res.send('Prueba');
})


//Error handler

app.use((err, req, res, next) => {
    console.log(err);
    res.status(err.status || 500).send(err.stack);
});

