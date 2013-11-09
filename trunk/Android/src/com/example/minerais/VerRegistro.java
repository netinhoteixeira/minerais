package com.example.minerais;

import java.util.ArrayList;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ListView;
import android.widget.TextView;

public class VerRegistro {
	
	private ListView listview;
	TextView totalrecords;
	DatabaseHelper db;
	public ArrayList<ProductModel> _productlist = 
			new ArrayList<ProductModel>();
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.verregistros);
		totalrecords = (TextView) findViewById(R.id.totalrecords);
		listview = (ListView) findViewById(R.id.listview);		
	}
	
	@Override
	protected void onResume() {
		super.onResume();
	}
	
	_productlist.clear();
	
	db = new DatabaseHelper(getApplicationContext());
	db.getWritableDatabse();
	ArrayList<ProductModel> product_list = db.getMinerals();

    for (int i = 0; i < product_list.size(); i++) {

        String tidno = product_list.get(i).getIdno();

        String tname = product_list.get(i).getMineralName();
        String tclasse = product_list.get(i).getMineralClass();

        ProductModel _ProductModel = new ProductModel();

        _ProductModel.setIdno(tidno);
        _ProductModel.setMineralName(tname);
        _ProductModel.setMineralClass(tclasse);

        _productlist.add(_ProductModel);
    }
    totalrecords.setText("Total Records :-" + _productlist.size());
    listview.setAdapter(new ListAdapter(this));
    db.close();

}

private class ListAdapter extends BaseAdapter {
    LayoutInflater inflater;
    ViewHolder viewHolder;

    public ListAdapter(Context context) {
        // TODO Auto-generated constructor stub
        inflater = LayoutInflater.from(context);
    }

    @Override
    public int getCount() {
        // TODO Auto-generated method stub
        return _productlist.size();
    }

    @Override
    public Object getItem(int position) {
        // TODO Auto-generated method stub
        return position;
    }

    @Override
    public long getItemId(int position) {
        // TODO Auto-generated method stub
        return position;
    }

    @Override
    public View getView(int position, View convertView, ViewGroup parent) {
        // TODO Auto-generated method stub
        if (convertView == null) {

            convertView = inflater.inflate(R.layout.listview_row, null);
            viewHolder = new ViewHolder();

            viewHolder.txt_pname = (TextView) convertView
                    .findViewById(R.id.txtdisplaypname);
            viewHolder.txt_pprice = (TextView) convertView
                    .findViewById(R.id.txtdisplaypprice);

            viewHolder.txtidno = (TextView) convertView
                    .findViewById(R.id.txtdisplaypid);
            convertView.setTag(viewHolder);

        } else {
            viewHolder = (ViewHolder) convertView.getTag();
        }

        viewHolder.txt_pname.setText(_productlist.get(position)
                .getProductname().trim());
        viewHolder.txt_pprice.setText(_productlist.get(position)
                .getProductprice().trim());

        viewHolder.txtidno.setText(_productlist.get(position).getIdno()
                .trim());

        final int temp = position;
        (convertView.findViewById(R.id.btn_update))
                .setOnClickListener(new OnClickListener() {

                    public void onClick(View arg0) {

                        String _productid = String.valueOf(_productlist
                                .get(temp).getIdno());
                        String _productname = _productlist.get(temp)
                                .getProductname();
                        String _productprice = _productlist.get(temp)
                                .getProductprice();

                        Intent intent = new Intent(ViewRecord.this,
                                AddUpdateValues.class);

                        Bundle bundle = new Bundle();
                        bundle.putString("id", _productid);
                        bundle.putString("name", _productname);
                        bundle.putString("price", _productprice);
                        intent.putExtras(bundle);
                        startActivity(intent);

                    }
                });
        (convertView.findViewById(R.id.btn_delete))
        .setOnClickListener(new OnClickListener() {

            public void onClick(View arg0) {

                AlertDialog.Builder alertbox = new AlertDialog.Builder(
                        ViewRecord.this);
                alertbox.setCancelable(true);
                alertbox.setMessage("Are you sure you want to delete ?");
                alertbox.setPositiveButton("Yes",
                        new DialogInterface.OnClickListener() {

                            public void onClick(
                                    DialogInterface arg0, int arg1) {

                                db.removeProduct(
                                        _productlist.get(temp)
                                                .getIdno().trim(),
                                        "", "");

                                ViewRecord.this.onResume();

                                Toast.makeText(
                                        getApplicationContext(),
                                        "Record Deleted...",
                                        Toast.LENGTH_SHORT).show();

                            }

                        });
                alertbox.setNegativeButton("No",
                        new DialogInterface.OnClickListener() {
                            public void onClick(
                                    DialogInterface arg0, int arg1) {

                            }
                        });
                alertbox.show();
            }
        });
return convertView;

}
}

private class ViewHolder {
TextView txt_pname;
TextView txt_pprice;
TextView txtidno;

}

} 
