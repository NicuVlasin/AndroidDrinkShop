package com.vlasin.nicu.androiddrinkshop.Utils;

import com.vlasin.nicu.androiddrinkshop.Model.Category;
import com.vlasin.nicu.androiddrinkshop.Model.Drink;
import com.vlasin.nicu.androiddrinkshop.Model.User;
import com.vlasin.nicu.androiddrinkshop.Retrofit.IDrinkShopAPI;
import com.vlasin.nicu.androiddrinkshop.Retrofit.RetrofitClient;

import java.util.ArrayList;
import java.util.List;

public class Common {
    private static final String BASE_URL = "http://192.168.1.5/drinkshop/";

    public static final String TOPPING_MENU_ID = "7";

    public static User currentUser = null;
    public static Category currentCategory = null;

    public static List<Drink> toppingList = new ArrayList<>();

    public static double toppingPrice = 0.0;
    public static List<String> toppingAdded = new ArrayList<>();

    //Hold field
    public static int sizeOfCup = -1;
    public static int sugar = -1;
    public static int ice = -1;

    public static IDrinkShopAPI getAPI()
    {
        return RetrofitClient.getClient(BASE_URL).create(IDrinkShopAPI.class);
    }
}
