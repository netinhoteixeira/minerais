package com.example.minerais;

import android.os.Bundle;
import android.app.Activity;
import android.content.Intent;
import android.view.*;
import android.view.View.OnClickListener;
//import android.content.*;
import android.widget.*;

import java.util.List;


public class AtividadePrincipal extends Activity implements 
  OnClickListener{
	
	private Button btn_adicionar, btn_ver, btn_pesquisar;
	 
    @Override //protected void
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.atividade_principal_);   
        
        btn_adicionar = (Button) finViewById(R.id.btn_adicionar);
        btn_ver = (Button) findViewById(R.id.btn_ver);
        btn_pesquisar = (Button) findViewById(R.id.btn_pesquisar);
        btn_adicionar.setOnClickListener(this);
        btn_ver.setOnClickListener(this);
        btn_pesquisar.setOnClickListener(this);       
    }
               
    	@Override
    	public void onClick(View v) {
    		switch(v.getId()){
    		case R.id.btn_adicionar:
    			Intent addintent = new Intent(AtividadePrincipal.this,
                        AdicionarRegistro.class);
                startActivity(addintent);
            break;
    		case R.id.btn_ver:
    			Intent viewintent = new Intent(AtividadePrincipal.this,
                        VerRegistro.class);
                startActivity(viewintent);
            break;
    		case R.id.btn_pesquisar:
    	         Intent searchintent = new Intent(AtividadePrincipal.this,
    	                 PesquisarRegistro.class);
    	         startActivity(searchintent);
    	    break;
    	    default:
    	    break;
    		}
    	}
    		
    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        // Inflate the menu; this adds items to the action bar if it is present.
        getMenuInflater().inflate(R.menu.atividade_principal_, menu);
        return true;
    }
 
}
