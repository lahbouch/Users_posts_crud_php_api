package com.example.userpostsapicrud.viewModels

import android.util.JsonReader
import android.util.Log
import androidx.lifecycle.ViewModel
import com.example.userpostsapicrud.model.User
import com.example.userpostsapicrud.repository.UserRepository
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.GlobalScope
import kotlinx.coroutines.launch
import org.json.JSONArray
import org.json.JSONObject

class UsersViewModel() : ViewModel() {
    val userRepo = UserRepository()
    fun loadUsers(callback: (MutableList<User>) -> Unit) {
        GlobalScope.launch(Dispatchers.IO) {
            val users = mutableListOf<User>()
            userRepo.getAll { str ->
                val json = JSONObject(str)
                val message = json.getJSONArray("message")
                for (i in 0 until message.length()) {
                    val user = message.getJSONObject(i)
                    val username = user.getString("username")
                    val email = user.getString("email")
                    val id = user.getString("id")
                    val userObj = User(avatar = "https://cataas.com/cat/says/$username", username=username,email=email,id=id.toInt())
                    users.add(userObj)
                }
                callback(users)


            }
        }
    }

    fun ondeleteUser(id:Int) {
        GlobalScope.launch(Dispatchers.IO) {

            userRepo.delete(id)

            }
        }
    }



