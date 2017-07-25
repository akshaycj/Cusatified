package com.cusatified.app;

import android.app.ProgressDialog;
import android.content.Intent;
import android.support.annotation.NonNull;
import android.support.v7.app.ActionBar;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.util.Log;
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


public class SignupActivity extends AppCompatActivity {

    FirebaseAuth auth;
    String email,pass;
    EditText emailt,passt;

    ProgressDialog progressDialog;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);


        getWindow().requestFeature(Window.FEATURE_ACTION_BAR);
        getWindow().setFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN,
                WindowManager.LayoutParams.FLAG_FULLSCREEN);

        ActionBar actionBar = getSupportActionBar();
        if(actionBar!=null) {

            actionBar.hide();

        }

        setContentView(R.layout.activity_signup);

        progressDialog = new ProgressDialog(this);
        progressDialog.setMessage("Creating account..");

        emailt = (EditText)findViewById(R.id.signup_email);
        passt = (EditText)findViewById(R.id.signup_pass);

        auth = FirebaseAuth.getInstance();


        Button signup = (Button)findViewById(R.id.signup_submit);

        signup.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                progressDialog.show();
                createAccount();

            }
        });

        Button login = (Button)findViewById(R.id.login_form_reg);

        login.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                startActivity(new Intent(SignupActivity.this,LoginActivity.class));
            }
        });




    }

    private void createAccount(){

        email = emailt.getText().toString();
        pass = passt.getText().toString();

        auth.createUserWithEmailAndPassword(email,pass).addOnCompleteListener(this, new OnCompleteListener<AuthResult>() {
            @Override
            public void onComplete(@NonNull Task<AuthResult> task) {

                Log.e("complete","enetered");
                if(task.isSuccessful())
                {   progressDialog.dismiss();
                    Log.e("complete sucess","sucess");
                    Toast.makeText(SignupActivity.this,"Account Created!",Toast.LENGTH_SHORT).show();
                    startActivity(new Intent(SignupActivity.this,LoginActivity.class));
                }
                else if(!task.isSuccessful())
                { Toast.makeText(SignupActivity.this,"Sign Up failed!",Toast.LENGTH_SHORT).show();}
            }
        });

    }



}
