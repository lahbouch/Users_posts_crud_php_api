package com.example.userpostsapicrud.model

data class User(
    var avatar : String = "",
    val id:Int = 0,
    val username:String,
    val email:String
) {
}