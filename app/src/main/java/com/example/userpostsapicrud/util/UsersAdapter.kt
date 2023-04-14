package com.example.userpostsapicrud.util

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.Button
import android.widget.TextView
import android.widget.Toast
import androidx.appcompat.widget.AppCompatImageView
import androidx.recyclerview.widget.RecyclerView
import com.example.userpostsapicrud.R
import com.example.userpostsapicrud.model.User
import com.example.userpostsapicrud.viewModels.UsersViewModel
import com.squareup.picasso.NetworkPolicy
import com.squareup.picasso.Picasso
import de.hdodenhof.circleimageview.CircleImageView

class UsersAdapter(val data: MutableList<User>,val activity : UsersAdapter.recycleViewAdapter) : RecyclerView.Adapter<UsersAdapter.ViewHolder>() {
    class ViewHolder(val view: View) : RecyclerView.ViewHolder(view) {
        var avatar = view.findViewById<CircleImageView>(R.id.avatarImageView)
        val username = view.findViewById<TextView>(R.id.userNameTextView)
        val email = view.findViewById<TextView>(R.id.emailTextView)
        val btn_supp = view.findViewById<AppCompatImageView>(R.id.deleteButton)
        val btn_update = view.findViewById<AppCompatImageView>(R.id.updateButton)
    }



    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): ViewHolder {
        val itemView: View = LayoutInflater.from(parent.context)
            .inflate(R.layout.user_view, parent, false)
        return ViewHolder(itemView)
    }

    override fun getItemCount(): Int {
        return data.size
    }

    override fun onBindViewHolder(holder: ViewHolder, position: Int) {
        fun getImg(){
            Picasso.get().load(data[position].avatar)
                .networkPolicy(NetworkPolicy.NO_STORE, NetworkPolicy.NO_CACHE)
                .into(holder.avatar)
        }

        getImg()
        holder.username.text = data[position].username
        holder.email.text = data[position].email

        holder.btn_supp.setOnClickListener {
            activity.onDeleteClick(data[position].id,position)
        }

    }

    interface recycleViewAdapter{
        fun onDeleteClick(id:Int,position : Int)
    }

}