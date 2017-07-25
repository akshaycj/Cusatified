package com.cusatified.app;

import android.content.Context;
import android.content.SharedPreferences;

/**
 * Created by Explore on 03-07-2016.
 */
public class Preference {
    SharedPreferences pref;
    SharedPreferences.Editor editor;
    Context context;

    int private_mod =0;

    private static final String pref_name ="welcome";
    private static final String first_time = "IsFirstTimeLaunch";

    public Preference(Context context){
        this.context = context;
        pref = context.getSharedPreferences(pref_name,private_mod);
        editor = pref.edit();
    }

    public void setFirstTimeLaunch(boolean isFirstTime) {
        editor.putBoolean(first_time, isFirstTime);
        editor.commit();
    }

    public boolean isFirstTimeLaunch() {
        return pref.getBoolean(first_time, true);
    }
}
