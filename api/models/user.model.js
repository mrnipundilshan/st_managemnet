const mongoose = require('mongoose');
const db = require('../config/db');

const Schema = mongoose.Schema;

const userSchema = new Schema({
    username:{
        type:String,
        required: true,
        unique : true
    },
    password:{
        type: String,
        required: true
    }
});

const User = db.model('users', userSchema);

module.exports = User;