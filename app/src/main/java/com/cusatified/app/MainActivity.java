package com.cusatified.app;


import android.Manifest;
import android.app.Activity;

import android.content.Context;
import android.content.Intent;


import android.content.IntentSender;
import android.content.pm.PackageManager;
import android.location.Location;
import android.net.Uri;
import android.support.v4.content.ContextCompat;
import android.support.v4.widget.DrawerLayout;

import android.support.v7.app.ActionBar;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.support.v7.widget.Toolbar;
import android.util.Log;
import android.view.View;
import android.widget.AdapterView;
import android.widget.GridView;
import android.widget.Toast;

import com.crashlytics.android.Crashlytics;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.ResultCallback;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.location.LocationRequest;
import com.google.android.gms.location.LocationServices;
import com.google.android.gms.location.LocationSettingsRequest;
import com.google.android.gms.location.LocationSettingsResult;
import com.google.android.gms.location.LocationSettingsStates;
import com.google.android.gms.location.LocationSettingsStatusCodes;
import com.mikepenz.materialdrawer.AccountHeader;
import com.mikepenz.materialdrawer.AccountHeaderBuilder;
import com.mikepenz.materialdrawer.Drawer;
import com.mikepenz.materialdrawer.DrawerBuilder;

import com.mikepenz.materialdrawer.model.PrimaryDrawerItem;
import com.mikepenz.materialdrawer.model.interfaces.IDrawerItem;


import fr.quentinklein.slt.LocationTracker;
import fr.quentinklein.slt.TrackerSettings;



public class MainActivity extends AppCompatActivity implements GoogleApiClient.ConnectionCallbacks,
        GoogleApiClient.OnConnectionFailedListener {

    private Toolbar mNestedToolbar, mGeneralToolbar;
    private DrawerLayout mDrawerLayout;
    private GoogleApiClient mGoogleApiClient;
    private static final String TAG = MainActivity.class.getSimpleName();

    private final static int PLAY_SERVICES_RESOLUTION_REQUEST = 1000;

    private Location mLastLocation;
    public static double lat,lang;
    protected static final int REQUEST_CHECK_SETTINGS = 0x1;


    GridView grid;

    String[] bank_names = {"Banks","ATM's"};
    int[] bank_id= {R.drawable.ic_bank,R.drawable.ic_atm};

    String[] shop_names = {"Stores","Malls"};
    int[] shop_id = {R.drawable.ic_store,R.drawable.ic_malls};


    String[] academic_names = {"Syllabus","Tuition Centres","Instruments"};
    int[] academic_id = {R.drawable.ic_syllabus,R.drawable.ic_tutuion,R.drawable.ic_compass};

    String[] sport_names = {"Grounds","Soccer","Basketball","Volleyball","Badminton","Table Tennis","Cricket","Boxing","Gym"};
    int[] sport_id ={R.drawable.ic_ground,R.drawable.ic_football,R.drawable.ic_basketball,R.drawable.ic_volleyball,
            R.drawable.ic_badminton,R.drawable.ic_table_tennis,R.drawable.ic_cricket,R.drawable.ic_boxing,R.drawable.ic_dumbbell};

    String[] hostel_names={"Boys(University)","Girls(University)","Hostel Office","Boys(Private)","Girls(Private)"};
    int[] hostel_id ={R.drawable.ic_boy,R.drawable.ic_girl,R.drawable.ic_hostel_office,R.drawable.ic_boy_p,R.drawable.ic_girl_p};

    String[] religion_names = {"Temple","Mosque","Church"};
    int[] religion_id ={R.drawable.ic_ganesha,R.drawable.ic_mosque,R.drawable.ic_church};

    String[] food_name = {"Restaurants","Cafe","Thattukkada"};
    int[] food_id = {R.drawable.ic_restaurant ,R.drawable.ic_cafe,  R.drawable.ic_thattukkada};

    String[] clothes_name ={"Uniform","Tailoring","Ironing"};
    int[] clothes_id ={R.drawable.ic_uniform,R.drawable.ic_tailor,R.drawable.ic_iron};

    String[] transport_names={"Bus","Train","Auto rickshaw","Flight"};
    int[] transport_id = {R.drawable.ic_bus,R.drawable.ic_train,R.drawable.ic_auto,R.drawable.ic_airplane};
    String[] res_names = {"Library","CITTIC","Printing(Internet)","Post Office"};
    int[] res_id = {R.drawable.ic_library,R.drawable.ic_cittic,R.drawable.ic_print,R.drawable.ic_post};


    String[] names = {"Departments","Hostel","Academics","Food","Clothes","Transport","Sports",
            "Banking","Medical","Shopping","Worship","Resources"};
    int[] ids = {R.drawable.ic_college,R.drawable.ic_hostel,R.drawable.ic_books,R.drawable.ic_cutlery,R.drawable.ic_shirt,R.drawable.ic_ufo,
            R.drawable.ic_sports,R.drawable.ic_wallet,R.drawable.ic_hospital,R.drawable.ic_shopping_cart,R.drawable.ic_worship,R.drawable.ic_wifi};

    String[] Grid_names;
    int[] Resource_id;
    int flag =0;
    int level = 0;

    Drawer result;
    AccountHeader header = null;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        // TODO: Move this to where you establish a user session
        logUser();


        //--------------drawer----------------
        mGeneralToolbar = (Toolbar) findViewById(R.id.generalToolbar);
        setSupportActionBar(mGeneralToolbar);

        header = new AccountHeaderBuilder()
                .withActivity(this)
                .withHeaderBackground(R.drawable.dark_opt)
                .withTranslucentStatusBar(false)
                .build();

        result = new DrawerBuilder(this)
                .withRootView(R.id.drawer_layout)
                .withToolbar(mGeneralToolbar)
                .withFullscreen(false)
                .withAccountHeader(header)
                .withActionBarDrawerToggle(true)
                .withTranslucentStatusBar(true)
                .withDisplayBelowStatusBar(true)
                .withActionBarDrawerToggleAnimated(true)
                .addDrawerItems(
                        new PrimaryDrawerItem().withName("Home"),

                        new PrimaryDrawerItem().withName("CITTIC"),

                        new PrimaryDrawerItem().withName("Blog"),

                        new PrimaryDrawerItem().withName("About")


                ).withOnDrawerItemClickListener(new Drawer.OnDrawerItemClickListener() {
                    @Override
                    public boolean onItemClick(View view, int position, IDrawerItem drawerItem) {


                        if (drawerItem != null) {
                            Intent intent = null;
                   /* if (drawerItem.getIdentifier() == 2) {
                        intent = new Intent(MainActivity.this, AboutActivity.class);
                    }*/
                            if (position == 2) {
                                intent = new Intent(MainActivity.this, cittic.class);

                            }else if (position == 3) {

                                intent = new Intent(MainActivity.this, CxActivity.class);

                            }else if(position==4) {

                                intent = new Intent(MainActivity.this, AboutActivity.class);
                            }

                            if (intent != null) {
                                startActivity(intent);
                            }



                        }

                        return false;
                    }
                })
                .withSavedInstance(savedInstanceState)
                .build();
        ActionBar actionBar = getSupportActionBar();
        if(actionBar!=null) {
            actionBar.setTitle("");
            actionBar.setDisplayHomeAsUpEnabled(false);
            result.getActionBarDrawerToggle().setDrawerIndicatorEnabled(true);
        }

        //----------------location------------------
       /*
            Log.e("coooo",""+lat);*/
        //---------location----------------------------------------------------

            buildGoogleApiClient();


        Context ctx = getApplicationContext();
        TrackerSettings settings =
                new TrackerSettings()
                        .setUseGPS(true)
                        .setUseNetwork(true)
                        .setUsePassive(true)
                        .setTimeBetweenUpdates(5000)//30 * 60 * 1000)
                        .setMetersBetweenUpdates(100);

        if (    ContextCompat.checkSelfPermission(ctx, Manifest.permission.ACCESS_FINE_LOCATION) != PackageManager.PERMISSION_GRANTED
                && ContextCompat.checkSelfPermission(ctx, Manifest.permission.ACCESS_COARSE_LOCATION) != PackageManager.PERMISSION_GRANTED) {

            // You need to ask the user to enable the permissions
            Toast.makeText(getApplicationContext(),"Please enable your location service",Toast.LENGTH_LONG);


        } else {
            LocationTracker tracker = new LocationTracker(ctx,settings) {
                @Override
                public void onLocationFound(Location location) {

                    lang = location.getLongitude();
                    lat = location.getLatitude();

                    if(lat == 0 && lang == 0){
                        Toast.makeText(getApplicationContext(),"Please enable your location service",Toast.LENGTH_LONG);
                    }

                }

                @Override
                public void onTimeout(){

                }
            };
            tracker.startListening();
        }





        //----------------retro---------------
        /*
        */
        //---------------retro-----------------

        Grid_names = names;
        Resource_id = ids;

        Log.e("InputString","hello" + Grid_names[0]);
        setGrid(names,ids);

        grid.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            @Override
            public void onItemClick(AdapterView<?> parent, View view, int position, long id) {

                    level=0;

                    if(flag==0)

                    {
                    switch (position){

                        case 1:
                            //Toast.makeText(getApplicationContext(),"lat="+lat,Toast.LENGTH_LONG).show();
                            setGrid(hostel_names,hostel_id);
                            flag = flag + position;
                            level++;
                            break;

                        case 2:
                            setGrid(academic_names,academic_id);
                            flag = flag + position;
                            level++;
                            break;

                        case 3:
                            setGrid(food_name,food_id);
                            flag = flag + position;
                            level++;
                            break;

                        case 4:
                            setGrid(clothes_name,clothes_id);
                            flag = flag + position;
                            level++;
                            break;
                        case 5:
                            setGrid(transport_names,transport_id);
                            flag = flag + position;
                            level++;
                            break;
                        case 6:
                            setGrid(sport_names,sport_id);
                            flag = flag + position;
                            level++;
                            break;
                        case 7:
                            setGrid(bank_names,bank_id);
                            flag = flag + position;
                            level++;
                            break;

                        case 9:
                            setGrid(shop_names,shop_id);
                            flag = flag + position;
                            level++;
                            break;

                        case 10:
                           setGrid(religion_names,religion_id);
                            flag = flag + position;
                            level++;
                            break;
                        case 11:
                            setGrid(res_names,res_id);
                            flag = flag + position;
                            level++;
                            break;
                        default:
                            flag = 0;
                            //flag=flag+position;
                            break;
                    }}

                if(flag == 2 && position == 0 ){
                    String url = "http://dl.cusatified.com/";

                    Intent i = new Intent(Intent.ACTION_VIEW);
                    i.setData(Uri.parse(url));
                    startActivity(i);
                }
                if(level==0){

                    Intent i = new Intent(MainActivity.this, CellActivity.class);
                    i.putExtra("pos", position);
                    i.putExtra("flag",flag);
                    i.putExtra("lat",lat);
                    i.putExtra("lang",lang);
                    view.getContext().startActivity(i);}


            }


        });



    }

    private void logUser() {
        // TODO: Use the current user's information
        // You can call any combination of these three methods
        Crashlytics.setUserIdentifier("12345");
        Crashlytics.setUserEmail("user@fabric.io");
        Crashlytics.setUserName("Test User");
    }

    protected synchronized void buildGoogleApiClient() {
        mGoogleApiClient = new GoogleApiClient.Builder(this)
                .addConnectionCallbacks(this)
                .addOnConnectionFailedListener(this)
                .addApi(LocationServices.API).build();

        LocationRequest locationRequest = LocationRequest.create();
        locationRequest.setPriority(LocationRequest.PRIORITY_HIGH_ACCURACY);
        locationRequest.setInterval(30 * 1000);
        locationRequest.setFastestInterval(5 * 1000);
        LocationSettingsRequest.Builder builder = new LocationSettingsRequest.Builder()
                .addLocationRequest(locationRequest);

        builder.setAlwaysShow(true);

        PendingResult<LocationSettingsResult> result =
                LocationServices.SettingsApi.checkLocationSettings(mGoogleApiClient, builder.build());
        result.setResultCallback(new ResultCallback<LocationSettingsResult>() {
            @Override
            public void onResult(LocationSettingsResult result) {
                final Status status = result.getStatus();
                final LocationSettingsStates state = result.getLocationSettingsStates();
                switch (status.getStatusCode()) {
                    case LocationSettingsStatusCodes.SUCCESS:
                        // All location settings are satisfied. The client can initialize location
                        // requests here.
                        break;
                    case LocationSettingsStatusCodes.RESOLUTION_REQUIRED:
                        // Location settings are not satisfied. But could be fixed by showing the user
                        // a dialog.
                        try {
                            // Show the dialog by calling startResolutionForResult(),
                            // and check the result in onActivityResult().
                            status.startResolutionForResult(
                                    MainActivity.this , REQUEST_CHECK_SETTINGS);
                        } catch (IntentSender.SendIntentException e) {
                            // Ignore the error.
                        }
                        break;
                    case LocationSettingsStatusCodes.SETTINGS_CHANGE_UNAVAILABLE:
                        // Location settings are not satisfied. However, we have no way to fix the
                        // settings so we won't show the dialog.
                        break;
                }
            }
        });
    }
    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        switch (requestCode) {
// Check for the integer request code originally supplied to startResolutionForResult().
            case REQUEST_CHECK_SETTINGS:
                switch (resultCode) {
                    case Activity.RESULT_OK:
                        displayLocation();
                        break;
                    case Activity.RESULT_CANCELED:
                        buildGoogleApiClient();
                        break;
                }
                break;
        }
    }

    private boolean checkPlayServices() {
        int resultCode = GooglePlayServicesUtil
                .isGooglePlayServicesAvailable(this);
        if (resultCode != ConnectionResult.SUCCESS) {
            if (GooglePlayServicesUtil.isUserRecoverableError(resultCode)) {
                GooglePlayServicesUtil.getErrorDialog(resultCode, this,
                        PLAY_SERVICES_RESOLUTION_REQUEST).show();
            } else {
                Toast.makeText(getApplicationContext(),
                        "This device is not supported.", Toast.LENGTH_LONG)
                        .show();
                finish();
            }
            return false;
        }
        return true;
    }

    @Override
    protected void onStart() {
        super.onStart();
        if (mGoogleApiClient != null) {
            mGoogleApiClient.connect();
        }
    }

    @Override
    protected void onResume() {
        super.onResume();

        checkPlayServices();
    }


    @Override
    public void onConnectionFailed(ConnectionResult result) {
        Log.i(TAG, "Connection failed: ConnectionResult.getErrorCode() = "
                + result.getErrorCode());
    }

    @Override
    public void onConnected(Bundle arg0) {

        // Once connected with google api, get the location
        displayLocation();
    }

    @Override
    public void onConnectionSuspended(int arg0) {
        mGoogleApiClient.connect();
    }

    private void displayLocation() {

        PackageManager pm = getApplicationContext().getPackageManager();
        int hasPerm = pm.checkPermission(
                android.Manifest.permission.WRITE_EXTERNAL_STORAGE,
                getApplicationContext().getPackageName());
        if (hasPerm != PackageManager.PERMISSION_GRANTED) {

        }
        else{
        mLastLocation = LocationServices.FusedLocationApi
                .getLastLocation(mGoogleApiClient);

        if (mLastLocation != null) {

            lat = mLastLocation.getLatitude();
            lang = mLastLocation.getLongitude();

        }

        else {

            Toast.makeText(getApplicationContext(),"Please enable Location service!",Toast.LENGTH_SHORT).show();

            buildGoogleApiClient();



        } }
    }


    public void setGrid(String[] grid_names,int[] grid_id){

        GridAdapter adapter = new GridAdapter(MainActivity.this, grid_names, grid_id);
        grid=(GridView)findViewById(R.id.grid);

        grid.setAdapter(adapter);

    }


    @Override
    public void onBackPressed(){
        if(flag==0){

        finish();
    }
        else {
        setGrid(names,ids);flag=0;
        }
    }





}

