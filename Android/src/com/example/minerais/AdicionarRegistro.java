package com.example.minerais;

import android.app.Activity;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;

public class AdicionarRegistro extends Activity implements 
  OnClickListener {
	
	private Button btn_adicionar;
	private EditText editTextNome, editTextClasse,
	  editTextId;
	DatabaseHelper db;
	ProductModel pm;
	
	@Override
	protected void onCreate(Bundle savedInstanceState){
		super.onCreate(savedInstanceState);
        setContentView(R.layout.acionar_registro);
        
        editTextNome = (EditText) findViewById(R.id.editTextNome);
        editTextClasse= (EditText) findViewById(R.id.editTextClasse);
        btn_adicionar = (Button) findViewById(R.id.btn_adicionar);

        editTextId = (EditText) findViewById(R.id.editTextId);
        btn_adicionar.setOnClickListener(this);
	}

    @Override
    public void onClick(View v) {
        // TODO Auto-generated method stub
        switch (v.getId()) {
        case R.id.btn_adicionar:

            if (editTextNome.getText().toString().equals("")
                    || editTextClasse.getText().toString().equals("")) {
                Toast.makeText(AddRecord.this, "Adicione os valores..",
                        Toast.LENGTH_LONG).show();
            } else {

                db = new DatabaseHelper(getApplicationContext());
                db.getWritableDatabase();
                pm = new ProductModel();
                pm.idno = (editTextId.getText().toString());
                pm.productname = editTextNome.getText().toString();
                pm.productprice = editTextClasse.getText().toString();

                Log.i("idno,productname,productprice", "" + pm.idno + ""
                        + pm.productname + "" + pm.productprice);
                   db.addProduct(pm);
                Toast.makeText(AddRecord.this, "Registro Adicionado",
                        Toast.LENGTH_LONG).show();
                finish();
            }
            break;

        default:
            break;
        }

    }
}
