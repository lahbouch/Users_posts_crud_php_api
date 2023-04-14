package com.example.userpostsapicrud.model

data class Post(
    val id : Int,
    val title : String,
    val description : String,
    val userId : Int
) {
}