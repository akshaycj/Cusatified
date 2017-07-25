package com.cusatified.app;

import android.app.ProgressDialog;
import android.content.Intent;
import android.support.annotation.NonNull;
import android.support.v7.app.ActionBar;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.firebase.auth.AuthResult;
import com.google.firebase.auth.FirebaseAuth;


public class LoginActivity extends AppCompatActivity {

    FirebaseAuth auth;
    String pass,email="";
    EditText passt,emailt;
    ProgressDialog progressDialog;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        progressDialog = new ProgressDialog(this);
        progressDialog.setMessage("Logging in..");

        auth = FirebaseAuth.getInstance();

        getWindow().requestFeature(Window.FEATURE_ACTION_BAR);
        getWindow().setFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN,
                WindowManager.LayoutParams.FLAG_FULLSCREEN);

        ActionBar actionBar = getSupportActionBar();
        if(actionBar!=null) {

            actionBar.hide();

        }

        setContentView(R.layout.activity_login);


        emailt = (EditText)findViewById(R.id.login_email);
        emailt.setText(email);
        passt = (EditText)findViewById(R.id.login_pass);

        Button login = (Button)findViewById(R.id.login_button);

        login.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {

                if(emailt.getText().toString().equals("")){
                    Toast.makeText(LoginActivity.this,"Invalid E-mail",Toast.LENGTH_SHORT).show();
                }else {
                    progressDialog.show();
                    Login();
                }
                //startActivity(new Intent(LoginActivity.this,MainActivity.class));
            }
        });

        Button register = (Button)findViewById(R.id.register_from_login);

        register.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                startActivity(new Intent(LoginActivity.this,SignupActivity.class));
            }
        });


    }


    private void Login(){

        email = emailt.getText().toString();
        pass = passt.getText().toString();


        auth.signInWithEmailAndPassword(email,pass).addOnCompleteListener(new OnCompleteListener<AuthResult>() {
            @Override
            public void onComplete(@NonNull Task<AuthResult> task) {
                progressDialog.dismiss();

                if(task.isSuccessful())
                {
                    Toast.makeText(LoginActivity.this,"Login Successful",Toast.LENGTH_SHORT).show();
                    startActivity(new Intent(LoginActivity.this,MainActivity.class));
                    finish();
                }
                if(!task.isSuccessful())
                { Toast.makeText(LoginActivity.this,"Login failed!",Toast.LENGTH_SHORT).show();}
            }
        });
    }
    @Override
    public void onBackPressed(){

            finish();

    }
}
