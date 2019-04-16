package com.bagwantistore.daosimpl;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.bagwantistore.daos.ProductDao;
import com.bagwantistore.models.Product;
import com.bagwantistore.utility.ConnectionProvider;

public class ProductDaoImpl implements ProductDao{

	@Override
	public boolean addProduct(Product product) {
		try {
		Connection conn=ConnectionProvider.getConn();
		PreparedStatement ps=conn.prepareStatement("insert into Product(productname,price,imagename) values(?,?,?)");
		ps.setString(1, product.getProductName());
		ps.setDouble(2,product.getPrice());
		ps.setString(3, product.getImage());
		int i=ps.executeUpdate();
		if(i!=0){
			return true;
		}
		}
		catch(Exception e){
			e.printStackTrace();
		}
		return false;
	}

}
