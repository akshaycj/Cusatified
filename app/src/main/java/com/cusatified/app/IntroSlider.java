package com.cusatified.app;

import android.content.Intent;

import android.content.pm.Signature;
import android.graphics.Color;
import android.os.Build;
import android.os.Bundle;

import android.view.WindowManager;
import android.widget.Toast;

import com.github.paolorotolo.appintro.AppIntro2;
import com.github.paolorotolo.appintro.AppIntroFragment;



/**
 * Created by Explore on 24-05-2016.
 */
public final class IntroSlider extends AppIntro2 {



    @Override
    public void init(Bundle savedInstanceState){


        addSlide(AppIntroFragment.newInstance("Know the Place","I will show you around a bit. After all , it is a University!",R.drawable.direction,Color.parseColor("#34495e")));

        addSlide(AppIntroFragment.newInstance("Get settled","I will help you find best accomodation possible", R.drawable.hostel,Color.parseColor("#34495e")));

        addSlide(AppIntroFragment.newInstance("Dine In","Dont forget the best part of here! Digg in!",R.drawable.cutlery,Color.parseColor("#34495e") ));

        addSlide(AppIntroFragment.newInstance("Books","I'll get you organized with your academic stuffs",R.drawable.books, Color.parseColor("#34495e")));

        changeStatusBarColor();

    }



    private void changeStatusBarColor() {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.LOLLIPOP) {
            /*
            Window window = getWindow();
            window.addFlags(WindowManager.LayoutParams.FLAG_DRAWS_SYSTEM_BAR_BACKGROUNDS);
            window.setStatusBarColor(Color.TRANSPARENT); */
            //getWindow().requestFeature(Window.FEATURE_ACTION_BAR);
            getWindow().setFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN,
                    WindowManager.LayoutParams.FLAG_FULLSCREEN);
        }
    }


    public void loadMainActivity(){

        Intent i = new Intent(IntroSlider.this, SignupActivity.class);
        startActivity(i);
    }


    public void onSkipPressed() {
        loadMainActivity();
        Toast.makeText(getApplicationContext(),getString(R.string.skip),Toast.LENGTH_SHORT).show();
    }

    @Override
    public void onNextPressed(){

    }

    @Override
    public void onDonePressed() {

        loadMainActivity();
        finish();
    }

    @Override
    public void onSlideChanged(){

    }
}
