const db = require('../config/db');
const User = require('../models/user.model');

exports.login = async(req,res,next)=>{

    const {username,password} = req.body;
    try{
        const user = await User.findOne({username:username});

        if(user && user.password == password){
            return res.status(200).json({status: true, message: "Login Success"})
        } else{
            return res.status(401).json({status: false, message:"Login failed"})
        }
    } catch (error){
        return res.status(500).json({status: false, message: "internel server error"})
    }
}