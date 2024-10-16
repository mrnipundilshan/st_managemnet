const router = require('express').Router();
const userController = require('../controller/user.controller');
const db = require('../config/db');

router.post('/login', userController.login);

module.exports = router;