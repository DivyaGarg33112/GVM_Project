package com.bagwantistore.controllers;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.bagwantistore.daos.ProductDao;
import com.bagwantistore.daosimpl.ProductDaoImpl;
import com.bagwantistore.models.Product;


@WebServlet("/addProduct")
@MultipartConfig(maxFileSize = 16177215)
public class AddProductController extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		String name=request.getParameter("productName");
		
		double price=Double.parseDouble(request.getParameter("price"));
		Part filePart=request.getPart("image");
		
		Product p=new Product();
		p.setProductName(name);
		p.setPrice(price);
		p.setImage(filePart.getSubmittedFileName());
		
		String fileName=filePart.getSubmittedFileName();
		System.out.println("File Name : "+fileName);
		
		HttpSession session=request.getSession();
		String serverLocation=session.getServletContext().getRealPath("/");
		System.out.println(serverLocation);
		
		String filePath=serverLocation+"images";
		System.out.println("filePath : "+filePath);
		
		File fileObj=new File(filePath);
		if(!fileObj.exists()){
			fileObj.createNewFile();
		}
		
		InputStream is=filePart.getInputStream();
		BufferedInputStream bis=new BufferedInputStream(is);
		
		FileOutputStream fos=new FileOutputStream(filePath+"/"+fileName+".jpg");
		BufferedOutputStream bos=new BufferedOutputStream(fos);
		int ch;
		while((ch=bis.read())!=-1){
			bos.write(ch);
		}
		
		bos.close();
		fos.close();
		ProductDao daoObj=new ProductDaoImpl();
		boolean r=daoObj.addProduct(p);
		if(r){
			out.println("Product Added");
		}
		else {
			out.println("Product Not Added");
		}
				
		
	}

}
