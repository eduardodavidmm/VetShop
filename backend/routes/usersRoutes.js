const { QueryFile } = require('pg-promise');
const usersController = require('../controllers/usersController');
const UsersController = require('../controllers/usersController');

module.exports = (app) => {
    app.get('/api/users/getAll', usersController.getAll);
}
