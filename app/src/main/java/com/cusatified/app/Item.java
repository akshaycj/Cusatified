package com.cusatified.app;

import android.app.ProgressDialog;
import android.content.Context;

import java.util.ArrayList;



/**
 * Created by Explore on 02-07-2016.
 */
public class Item {

    private String distance;
    private String time;
    private String title;
    private String titleDesc;
    private String rating;
    private String opening;
    private String closing;
    private String about;
    private String address;
    private double latitude;
    private double longitude;

public Item(){}

public Item(String distance,String time,String title,String titleDesc,String rating,String opening,String closing,String about,String address,double latitude,double longitude){

    this.distance = distance;
    this.time = time;
    this.title = title;
    this.titleDesc = titleDesc;
    this.rating = rating;
    this.opening = opening;
    this.closing = closing;
    this.about = about;
    this.address = address;
    this.latitude = latitude;
    this.longitude = longitude;
}

    public String getDistance(){
        return distance;
    }

    public String getTime(){
        return time;
    }

    public String getTitle(){
        return title;
    }

    public String getTitleDesc(){
        return titleDesc;
    }

   public String getRating(){return rating;}

    public String getOpening(){return opening;}

    public String getClosing(){return closing;}

    public String getAbout(){return about;}

    public String getAddress(){return address;}

    public double getLatitude(){return latitude;}

    public double getLongitude(){return longitude;}



//http://maps.googleapis.com/maps/api/distancematrix/json?origins=10.04603362,76.32335521&destinations=10.0274993,76.3080381&mode=walking&sensor=false
public static ArrayList<Item> getItemList(int posi, int flag, Context context,double my_lat,double my_lang){
    String Url;


    ArrayList<Model> model = new ArrayList<>();
    ArrayList<Item> items = new ArrayList<>();
    getJson gjson;
switch (flag){
    case 0:

        switch (posi){
            case 0:
                gjson = new getJson("departments",context,my_lat,my_lang);
                items = gjson.jsonRespo();
                break;
            case 8:
                gjson = new getJson("hospital",context,my_lat,my_lang);
                items = gjson.jsonRespo();
                break;
        }
        break;
    case 1:
        switch (posi){
            case 0:
                gjson = new getJson("menug",context,my_lat,my_lang);
                items = gjson.jsonRespo();
                break;
            case 1:
                gjson = new getJson("womenug",context,my_lat,my_lang);
                items = gjson.jsonRespo();
                break;
            case 2:
                gjson = new getJson("office",context,my_lat,my_lang);
                items = gjson.jsonRespo();
                break;
            case 3:
                gjson = new getJson("men",context,my_lat,my_lang);
                items = gjson.jsonRespo();
                break;
            case 4:
                gjson = new getJson("women",context,my_lat,my_lang);
                items = gjson.jsonRespo();
                break;

        }
        break;
    case 2:
        switch (posi){
            case 0:
                gjson = new getJson("",context,my_lat,my_lang);
                items = gjson.jsonRespo();
                break;
            case 1:
                gjson = new getJson("tution",context,my_lat,my_lang);
                items = gjson.jsonRespo();
                break;
            case 2:
                gjson = new getJson("instruments",context,my_lat,my_lang);
                items = gjson.jsonRespo();
                break;


        }
        break;

    case 3:
        switch (posi){
            case 0:
                gjson = new getJson("resturant",context,my_lat,my_lang);
                items = gjson.jsonRespo();
                break;
            case 1:
                gjson = new getJson("cafe",context,my_lat,my_lang);
                items = gjson.jsonRespo();
                break;
            case 2:
                gjson = new getJson("thattukada",context,my_lat,my_lang);
                items = gjson.jsonRespo();
                break;
        }
        break;
    case 4:
        switch (posi){
            case 0:
                gjson = new getJson("uniform",context,my_lat,my_lang);
                items = gjson.jsonRespo();
                break;
            case 1:
                gjson = new getJson("tailoring",context,my_lat,my_lang);
                items = gjson.jsonRespo();
                break;
            case 2:
                gjson = new getJson("laundry",context,my_lat,my_lang);
                items = gjson.jsonRespo();
                break;
        }
        break;
    case 5:
        switch (posi){
            case 0:
                gjson = new getJson("bus",context,my_lat,my_lang);
                items = gjson.jsonRespo();
                break;
            case 1:
                gjson = new getJson("train",context,my_lat,my_lang);
                items = gjson.jsonRespo();
                break;
            case 2:
                gjson = new getJson("auto",context,my_lat,my_lang);
                items = gjson.jsonRespo();
                break;
            case 3:
                gjson = new getJson("airport",context,my_lat,my_lang);
                items = gjson.jsonRespo();
                break;
        }
        break;
    case 6:
        switch (posi){
            case 0:
                gjson = new getJson("grounds",context,my_lat,my_lang);
                items = gjson.jsonRespo();
                break;
            case 1:
                gjson = new getJson("football",context,my_lat,my_lang);
                items = gjson.jsonRespo();
                break;
            case 2:
                gjson = new getJson("basketball",context,my_lat,my_lang);
                items = gjson.jsonRespo();
                break;
            case 3:
                gjson = new getJson("volleyball",context,my_lat,my_lang);
                items = gjson.jsonRespo();
                break;
            case 4:
                gjson = new getJson("badminton",context,my_lat,my_lang);
                items = gjson.jsonRespo();
                break;
            case 5:
                gjson = new getJson("tabletennis",context,my_lat,my_lang);
                items = gjson.jsonRespo();
                break;
            case 6:
                gjson = new getJson("cricket",context,my_lat,my_lang);
                items = gjson.jsonRespo();
                break;
            case 7:
                gjson = new getJson("boxing",context,my_lat,my_lang);
                items = gjson.jsonRespo();
                break;
            case 8:
                gjson = new getJson("gym",context,my_lat,my_lang);
                items = gjson.jsonRespo();
                break;
        }
        break;
    case 7:
        switch (posi){
            case 0:
                gjson = new getJson("bank",context,my_lat,my_lang);
                items = gjson.jsonRespo();
                break;
            case 1:
                gjson = new getJson("atm",context,my_lat,my_lang);
                items = gjson.jsonRespo();
                break;
        }
        break;

    case 9:
        switch (posi){
            case 0:
                gjson = new getJson("stores",context,my_lat,my_lang);
                items = gjson.jsonRespo();
                break;
            case 1:
                gjson = new getJson("mall",context,my_lat,my_lang);
                items = gjson.jsonRespo();
                break;
        }
        break;
    case 10:
        switch (posi){
            case 0:
                gjson = new getJson("temple",context,my_lat,my_lang);
                items = gjson.jsonRespo();
                break;
            case 1:
                gjson = new getJson("mosque",context,my_lat,my_lang);
                items = gjson.jsonRespo();
                break;
            case 2:
                gjson = new getJson("church",context,my_lat,my_lang);
                items = gjson.jsonRespo();
                break;
        }break;
    case 11:
        switch (posi){
            case 0:
                gjson = new getJson("library",context,my_lat,my_lang);
                items = gjson.jsonRespo();
                break;
            case 1:
                gjson = new getJson("cittic",context,my_lat,my_lang);
                items = gjson.jsonRespo();
                break;
            case 2:
                gjson = new getJson("resources",context,my_lat,my_lang);
                items = gjson.jsonRespo();
                break;
            case 3:
                gjson = new getJson("post",context,my_lat,my_lang);
                items = gjson.jsonRespo();
                break;

        }break;

    }

    return items;

}





}
