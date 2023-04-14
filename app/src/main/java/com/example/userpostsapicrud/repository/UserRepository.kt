package com.example.userpostsapicrud.repository

import android.util.Log
import com.example.userpostsapicrud.model.User
import org.apache.http.HttpResponse
import org.apache.http.client.HttpClient
import org.apache.http.client.methods.HttpDelete
import org.apache.http.client.methods.HttpGet
import org.apache.http.impl.client.DefaultHttpClient
import java.io.BufferedReader
import java.io.InputStreamReader
import java.net.HttpURLConnection
import java.net.URL

class UserRepository {
     suspend fun getAll(callback:(String)->Unit) {
        val url = URL("http://192.168.0.104/user")
        val client : HttpClient = DefaultHttpClient()

        val request : HttpGet = HttpGet()
        request.uri = url.toURI()
         val response : HttpResponse = client.execute(request)

         val reader = BufferedReader(InputStreamReader(response.entity.content))



         val sb = StringBuffer("")
         var line = ""
//
//
         while (reader.readLine().run {
                 line = this
             } != null) {

             sb.append(line)
             break
         }

         reader.close()

         callback(sb.toString())


    }

    fun get() {}
    fun update(id:Int) {}
    fun delete(id: Int) {
        val url = URL("http://192.168.0.104/user?id=$id")
        val client : HttpClient = DefaultHttpClient()

        val request :HttpDelete = HttpDelete()
        request.uri = url.toURI()
        val response : HttpResponse = client.execute(request)

        val reader = BufferedReader(InputStreamReader(response.entity.content))
        Log.e("TAG", "delete: ${reader.readText()}" )


    }
    fun add(user: User) {}
}


