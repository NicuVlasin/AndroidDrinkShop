package com.vlasin.nicu.androiddrinkshop.Adapter;

import android.content.Context;
import android.content.Intent;
import android.support.annotation.NonNull;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

import com.squareup.picasso.Picasso;
import com.vlasin.nicu.androiddrinkshop.DrinkActivity;
import com.vlasin.nicu.androiddrinkshop.Interface.ItemClickListener;
import com.vlasin.nicu.androiddrinkshop.Model.Category;
import com.vlasin.nicu.androiddrinkshop.R;
import com.vlasin.nicu.androiddrinkshop.Utils.Common;

import java.util.List;

public class CategoryAdapter extends RecyclerView.Adapter<CategoryViewHolder> {

    Context context;
    List<Category> categories;

    public CategoryAdapter(Context context, List<Category> categories) {
        this.context = context;
        this.categories = categories;
    }

    @NonNull
    @Override
    public CategoryViewHolder onCreateViewHolder(@NonNull ViewGroup parent, int viewType) {
        View itemView = LayoutInflater.from(context).inflate(R.layout.menu_item_layout, null);
        return new CategoryViewHolder(itemView);
    }

    @Override
    public void onBindViewHolder(@NonNull CategoryViewHolder holder, final int position) {
        //Load Image
        Picasso.with(context)
                .load(categories.get(position).Link)
                .into(holder.img_product);
        holder.txt_menu_name.setText(categories.get(position).Name);

        //Event
        holder.setItemClickListener(new ItemClickListener() {
            @Override
            public void onClick(View v) {
                Common.currentCategory = categories.get(position);

                //Start new Activity
                context.startActivity(new Intent(context, DrinkActivity.class));
            }
        });

    }

    @Override
    public int getItemCount() {
        return categories.size();
    }
}
