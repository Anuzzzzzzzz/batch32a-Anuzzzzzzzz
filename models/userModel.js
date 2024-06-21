const mongoose = require('mongoose')

const userSchema = new mongoose.Schema({
   fname : {
        type: String,
        required : true
    }, 
  lname : {
        type: String,
        required : true
    },
  username : {
        type: String,
        required : true,
        unique : true
    },
 password : {
        type: String,
        required : true
    }, 
    isAdmin :{
        type : Boolean,
        default: false
    }
})

const Student = mongoose.model('student', userSchema)
module.exports = Student;