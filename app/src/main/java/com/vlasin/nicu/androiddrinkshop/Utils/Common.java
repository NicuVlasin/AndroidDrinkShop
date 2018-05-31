package com.vlasin.nicu.androiddrinkshop.Utils;

import com.vlasin.nicu.androiddrinkshop.Retrofit.IDrinkShopAPI;
import com.vlasin.nicu.androiddrinkshop.Retrofit.RetrofitClient;

public class Common {
    private static final String BASE_URL = "http://localhost/drinkshop";

    public static IDrinkShopAPI getAPI()
    {
        return RetrofitClient.getClient(BASE_URL).create(IDrinkShopAPI.class);
    }
}
