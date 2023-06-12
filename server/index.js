console.log("Start");

//IMPORTS FROM PACKAGES 
const express = require('express');
const mongoose = require('mongoose');

//IMPORTS FROM OTHER FILES
const authRouter = require('./routes/auth.js')

//INIT 
const PORT = 3000;
const app = express();
const DB = 'mongodb+srv://aryan:aryan123@cluster0.v1qvy3j.mongodb.net/?retryWrites=true&w=majority'

//middleware
app.use(express.json());
app.use(authRouter);

//connections
mongoose.connect(DB).then(() => {
    console.log("Connection successful");
}).catch( e => {
     console.log(e);
})

app.listen(PORT, "0.0.0.0", () => {
    console.log(`Connected at port ${PORT}`);
})