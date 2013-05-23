package com.example.minerais;

import android.os.Bundle;
import android.app.Activity;
import android.view.*;
//import android.content.*;
import android.widget.*;

import java.util.List;


public class AtividadePrincipal extends Activity {
	
	private dados dd;
	Button btnFiltro;
	ListView listaEspecies;
	 
    @Override //protected void
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.atividade_principal_);   
        
        btnFiltro = (Button)
        findViewById(R.id.btnFiltro);
        
        listaEspecies = (ListView) 
        findViewById(R.id.listViewEspecies);
        
        List<String> names = this.dd.selecionarTodos();
        StringBuilder sb = new StringBuilder();
        sb.append("Espécies:");
        for (String name : names) {
        	sb.append(name +"\n");
        }
        
        this.listaEspecies.addTouchables(views)
         
        btnFiltro.setOnClickListener(new View.OnClickListener() {
    	 
    	@Override
    	public void onClick(View arg0) {
    	
    		setContentView(R.layout.filtro); 
    	//	Button btnAplicar = (Button) findViewById(R.id.btnAplicar);
    		
    	  
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
