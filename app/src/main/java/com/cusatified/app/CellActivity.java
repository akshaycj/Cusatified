package com.cusatified.app;

import android.app.ProgressDialog;
import android.content.Context;
import android.os.AsyncTask;
import android.support.v7.app.ActionBar;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.support.v7.widget.Toolbar;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.ListView;
import android.widget.TextView;


import com.google.android.gms.maps.CameraUpdateFactory;
import com.google.android.gms.maps.GoogleMap;
import com.google.android.gms.maps.MapView;
import com.google.android.gms.maps.MapsInitializer;
import com.google.android.gms.maps.OnMapReadyCallback;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.MarkerOptions;

import com.ramotion.foldingcell.FoldingCell;



import java.util.ArrayList;

import java.util.HashSet;
import java.util.List;


public class CellActivity extends AppCompatActivity {

    private int posi;
    private int flag;
    double lat,lang;
    Context context;

    ArrayList<Item> items;
    ProgressDialog progressDialog;
    ListView theListView;
    FoldingCellListAdapter adapter;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_cell);

        Toolbar toolbar = (Toolbar) findViewById(R.id.generalToolbar);
        setSupportActionBar(toolbar);

        Bundle extras =getIntent().getExtras();
        if(extras!=null){
            posi = extras.getInt("pos");
            flag = extras.getInt("flag");
            lat = extras.getInt("lat");
            lang = extras.getInt("lang");
        }
        theListView = (ListView) findViewById(R.id.mainListView);

        items = new ArrayList<>();
        progressDialog = new ProgressDialog(this);
        progressDialog.setMessage("Loading..");
        progressDialog.show();
        items =Item.getItemList(posi,flag,getApplicationContext(),lat,lang);

        adapter = new FoldingCellListAdapter(this, items);

        theListView.setAdapter(adapter);
        progressDialog.dismiss();

        theListView.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            @Override
            public void onItemClick(AdapterView<?> adapterView, View view, int pos, long l) {
                ((FoldingCell) view).toggle(false);

                adapter.registerToggle(pos);
            }

        });



        ActionBar actionBar = getSupportActionBar();

        if(actionBar!= null){

            actionBar.setDisplayHomeAsUpEnabled(true);
            actionBar.setHomeButtonEnabled(true);


        }

    }




    public class FoldingCellListAdapter extends ArrayAdapter<Item>{

        private HashSet<Integer> unfoldedIndexes = new HashSet<>();



        public FoldingCellListAdapter( Context context, List<Item> objects) {
            super(context, 0, objects);
        }

        @Override
        public View getView(final int position, View convertView, ViewGroup parent) {
            Log.e("keri","sdfsd");
            Item item = getItem(position);

            FoldingCell cell = (FoldingCell) convertView;
            final ViewHolder viewH;

            if(cell == null){

                viewH = new ViewHolder(item.getLatitude(),item.getLongitude());
                LayoutInflater li = LayoutInflater.from(getContext());

                cell = (FoldingCell)li.inflate(R.layout.cell,parent,false);

                viewH.distance = (TextView)cell.findViewById(R.id.distance);
                viewH.time = (TextView)cell.findViewById(R.id.time_label);
                viewH.title = (TextView)cell.findViewById(R.id.cellTitle);
                viewH.titleDesc = (TextView)cell.findViewById(R.id.cellTitleDesc);
                viewH.detailTitle = (TextView)cell.findViewById(R.id.detailTitle);
                //viewH.rating = (TextView)cell.findViewById(R.id.Rating);
                viewH.opening = (TextView)cell.findViewById(R.id.opening);
                viewH.closing = (TextView)cell.findViewById(R.id.closing);
                viewH.about = (TextView)cell.findViewById(R.id.about);
                viewH.address = (TextView)cell.findViewById(R.id.address);
                viewH.mapView = (MapView) cell.findViewById(R.id.map);
                viewH.bt = (Button)cell.findViewById(R.id.done_button);


                cell.setTag(viewH);

            }
            else {
               if (unfoldedIndexes.contains(position)) {
                    cell.unfold(true);
                } else {
                    cell.fold(true);
                }
                viewH = (ViewHolder) cell.getTag();
            }
            final FoldingCell fc = cell;
            viewH.distance.setText(item.getDistance());
            viewH.time.setText(item.getTime());
            viewH.title.setText(item.getTitle());
            viewH.titleDesc.setText(item.getTitleDesc());
            viewH.detailTitle.setText(item.getTitleDesc());
            //viewH.rating.setText(item.getRating());
            viewH.opening.setText(item.getOpening());
            viewH.closing.setText(item.getClosing());
            viewH.about.setText(item.getAbout());
            viewH.address.setText(item.getAddress());

            viewH.bt.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {

                    fc.toggle(false);

                    registerToggle(position);
                }

            });



            viewH.initializeMapView();

            return cell;

        }

        public void registerToggle(int position) {
            if (unfoldedIndexes.contains(position))
                registerFold(position);
            else
                registerUnfold(position);
        }

        public void registerFold(int position) {
            unfoldedIndexes.remove(position);
        }

        public void registerUnfold(int position) {
            unfoldedIndexes.add(position);
        }




    }


    public class ViewHolder implements OnMapReadyCallback {
        TextView distance;
        TextView time;
        TextView title;
        TextView detailTitle;
        TextView titleDesc;
       // TextView rating;
        TextView opening;
        TextView closing;
        TextView about;
        TextView address;

        LatLng cord;

        Button bt;

        MapView mapView;

        GoogleMap map;

        ViewHolder(){

        }
        ViewHolder(double lat,double longi){

            cord = new LatLng(lat,longi);

        }

        @Override
        public void onMapReady(GoogleMap googleMap) {
            MapsInitializer.initialize(getApplicationContext());
            map = googleMap;
            map.moveCamera(CameraUpdateFactory.newLatLngZoom(cord, 15f));
            map.addMarker(new MarkerOptions().position(cord));

            map.setMapType(GoogleMap.MAP_TYPE_NORMAL);

        }


        public void initializeMapView() {
            if (mapView != null) {

                mapView.onCreate(null);

                mapView.getMapAsync(this);
            }
        }



    }


    @Override
   public void onBackPressed(){
        super.onBackPressed();
    }


   public boolean onOptionsItemSelected(MenuItem item) {
        switch (item.getItemId()) {
            case android.R.id.home:
                finish();
                return true;
            default:
                return super.onOptionsItemSelected(item);
        }
    }

}
