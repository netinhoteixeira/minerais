package com.example.minerais;

import android.os.Bundle;
import android.app.Activity;
import android.view.*;
import android.content.*;
import android.widget.*;


public class AtividadePrincipal extends Activity {
	Button btnFiltro;
	 
    @Override //protected void
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.atividade_principal_);   
        
        btnFiltro = (Button)
        findViewById(R.id.btnFiltro);
                
        btnFiltro.setOnClickListener(new View.OnClickListener() {
    	 
    	@Override
    	public void onClick(View arg0) {
    	 
    	Intent verFiltro = new
    	Intent(AtividadePrincipal.this,Filtro.class);
    	AtividadePrincipal.this.startActivity(verFiltro);
    	//AtividadePrincipal.this.finish();
    	 
    	}
   	});
    }
    	
    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        // Inflate the menu; this adds items to the action bar if it is present.
        getMenuInflater().inflate(R.menu.atividade_principal_, menu);
        return true;
    }
 
}
