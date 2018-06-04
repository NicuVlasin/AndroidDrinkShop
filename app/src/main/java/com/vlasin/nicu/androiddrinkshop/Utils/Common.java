package com.vlasin.nicu.androiddrinkshop.Utils;

import com.vlasin.nicu.androiddrinkshop.Model.Category;
import com.vlasin.nicu.androiddrinkshop.Model.User;
import com.vlasin.nicu.androiddrinkshop.Retrofit.IDrinkShopAPI;
import com.vlasin.nicu.androiddrinkshop.Retrofit.RetrofitClient;

public class Common {
    private static final String BASE_URL = "http://192.168.1.6/drinkshop/";

    public static User currentUser = null;
    public static Category currentCategory = null;

    public static IDrinkShopAPI getAPI()
    {
        return RetrofitClient.getClient(BASE_URL).create(IDrinkShopAPI.class);
    }
}
