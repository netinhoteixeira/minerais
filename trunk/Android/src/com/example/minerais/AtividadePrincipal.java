package com.example.minerais;

import android.os.Bundle;
import android.app.Activity;
import android.view.Menu;

public class AtividadePrincipal extends Activity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.atividade_principal_);
    }

    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        // Inflate the menu; this adds items to the action bar if it is present.
        getMenuInflater().inflate(R.menu.atividade_principal_, menu);
        return true;
    }
    
}
