package com.cusatified.app;


import android.app.ProgressDialog;
import android.content.Context;
import android.os.AsyncTask;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.Locale;
import java.util.concurrent.ExecutionException;

/**
 * Created by Explore on 07-07-2016.
 */
public class getJson {


    String cat;
    double my_lat,my_lang;
    public Context context;
    public String time ="";
    public static dataContent content;

    public getJson(String cat, Context context,double my_lat,double my_lang){
        this.cat = cat;
        this.context = context;


       // this.my_lat = my_lat;
        //this.my_lang = my_lang;

    }

    public void setTime(String time){
        this.time = time;
    }
    public String getTime(){
        return time;
    }


    public ArrayList<Item> jsonRespo(){
        ArrayList<Item> items = new ArrayList<>();


        InputStream reader = null;
        try {
            reader = context.getAssets().open(cat + ".json");
            String input = "";
            int bRead = -1;
            byte[] buffer = new byte[1024];
            do{
                bRead = reader.read(buffer, 0, 1024);
                if(bRead==-1){
                    break;
                }
                input += new String(buffer, 0, bRead);
            }while (true);



            JSONObject jb = new JSONObject(input);
            JSONArray jsonArray = jb.optJSONArray(cat);

            for(int i=0; i < jsonArray.length(); i++){
                JSONObject jsonObject = jsonArray.getJSONObject(i);

                double lat = Double.parseDouble(jsonObject.optString("lat"));
                double lon = Double.parseDouble(jsonObject.optString("lon"));
                String name = jsonObject.optString("name");
                String description = jsonObject.optString("description");
                String otime = jsonObject.optString("otime");
                String ctime = jsonObject.optString("ctime");


                LocationTask loct = new LocationTask();

                String dist="--";
                String timex = "--";
                my_lang = MainActivity.lang;
                my_lat = MainActivity.lat;


                try {
                    dist = loct.execute(my_lat, my_lang, lat, lon).get();

                }catch (ExecutionException f){

                }
                catch (InterruptedException e){

                }

                if(otime.equals("") || ctime.equals("")){
                    items.add(new Item(dist, timex, "Your Location", name, "5", "--",
                            "--",description,"" , lat, lon));

                }
                else {

                    items.add(new Item(dist, timex, "Your Location", name, "5",otime,
                            ctime, description,"" , lat, lon));
                }
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
        catch (JSONException e) {e.printStackTrace();}
        finally {
            if(reader!=null){
                try {
                    reader.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
        return items;
    }

    class LocationTask extends AsyncTask<Double,String ,String>{

        String db_user="admin99",pass="kalfin";

        String api_string = "http://wwww.restifydb.com/api/p0akfa6d9f86x87a98h98agxg98g9a8/?"+db_user+"?"+pass;

        @Override
        protected String doInBackground(Double... integers) {
            double my_lat = integers[0], my_long = integers[1], dest_lat = integers[2], dest_long = integers[3];



            String endpoint = "http://maps.googleapis.com/maps/api/distancematrix/json?origins=" +
                    "%f,%f&destinations=%f,%f&mode=walking&sensor=false";
            String url = String.format(Locale.getDefault(), endpoint, my_lat, my_long, dest_lat, dest_long);

            String data;
            String dump = api_string;

            HttpURLConnection urlConnection = null;
            try {
                urlConnection = (HttpURLConnection) new URL(url).openConnection();

                urlConnection.connect();


                BufferedReader br = new BufferedReader(new InputStreamReader(urlConnection.getInputStream()));

                StringBuilder sb = new StringBuilder();

                String line;
                while ((line = br.readLine()) != null) {
                    sb.append(line);
                }
                data = sb.toString();

                br.close();

                return getDistanceFromData(data);
            } catch (Exception e) {
                e.printStackTrace();
            } finally {
                if (urlConnection != null)
                    urlConnection.disconnect();
            }

            return null;
        }

        @Override
        protected void onPreExecute() {

            super.onPreExecute();



        }

        private String getDistanceFromData(String data) {

            String dist ="";
            try {

                JSONObject root = new JSONObject(data);

                JSONObject firstRow = root.getJSONArray("rows").getJSONObject(0);
                JSONArray elements = firstRow.getJSONArray("elements");
                JSONObject distance = elements.getJSONObject(0).getJSONObject("distance");
                dist = distance.getString("text");
                JSONObject time_est = elements.getJSONObject(0).getJSONObject("time");

                String str = time_est.getString("text");

                return dist;
            } catch (JSONException e) {
                e.printStackTrace();
            }
            return dist ;
        }


    }

}
