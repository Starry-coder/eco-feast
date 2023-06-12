const mongoose = require('mongoose');

const userSchema = mongoose.Schema({
    name : {
        requred : true,
        type : String,
        trim : true,
    },
    email : {
        requred : true,
        type : String,
        trim : true,
        validate : {
            validator: (value) =>{
                const re =  /^(([^<>()[\]\.,;:\s@\"]+(\.[^<>()[\]\.,;:\s@\"]+)*)|(\".+\"))@(([^<>()[\]\.,;:\s@\"]+\.)+[^<>()[\]\.,;:\s@\"]{2,})$/i;
                return value.match(re);
            },
            message: 'Please enter a valid email address!',
        },
    },
    password: {
        requried: true,
        type: String,
    },
    /*repassword: {
        reuqired: true,
        type: String,
        validate : {
            validator: (value) =>{
                if( password == value)
                    return true;
            },
            message: 'Your password does not match!',
        }
    },*/
    type: {
        type: String,
        default: 'user',
    }
});

const User = mongoose.model("User", userSchema);
module.exports  = User;