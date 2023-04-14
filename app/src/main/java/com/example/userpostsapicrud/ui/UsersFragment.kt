package com.example.userpostsapicrud.ui

import android.os.Bundle
import android.view.ContextMenu
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.fragment.app.Fragment
import androidx.fragment.app.viewModels
import androidx.recyclerview.widget.DividerItemDecoration
import androidx.recyclerview.widget.LinearLayoutManager
import androidx.recyclerview.widget.RecyclerView
import com.example.userpostsapicrud.R
import com.example.userpostsapicrud.repository.UserRepository
import com.example.userpostsapicrud.util.UsersAdapter
import com.example.userpostsapicrud.viewModels.UsersViewModel


class UsersFragment : Fragment(),UsersAdapter.recycleViewAdapter {

    lateinit var userRepo: UserRepository
    lateinit var recycleView : RecyclerView
    lateinit var adapter : RecyclerView.Adapter<UsersAdapter.ViewHolder>
    val viewModel : UsersViewModel  by viewModels()

    override fun onCreateView(
        inflater: LayoutInflater, container: ViewGroup?,
        savedInstanceState: Bundle?
    ): View? {
        // Inflate the layout for this fragment
        return inflater.inflate(R.layout.fragment_users, container, false)
    }




    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)

        recycleView = view.findViewById(R.id.UsersRecycleView)
        recycleView.layoutManager = LinearLayoutManager(view.context,RecyclerView.VERTICAL,false)
        recycleView.addItemDecoration(
            DividerItemDecoration(
                recycleView.getContext(),
                DividerItemDecoration.HORIZONTAL

            )
        )

        viewModel.loadUsers {
            adapter = UsersAdapter(it,this)
            recycleView.adapter = adapter

        }



    }

    override fun onDeleteClick(id: Int,position :Int) {
        viewModel.ondeleteUser(id)
        adapter.notifyItemRemoved(position)

    }




}