package com.bagwantistore.controllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bagwantistore.daos.UserDao;
import com.bagwantistore.daosimpl.UserDaoImpl;
import com.bagwantistore.models.User;

@WebServlet("/updateUser")
public class UpdateUserController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	response.setContentType("text/html");
    	PrintWriter out=response.getWriter();
    	
    	String s1=request.getParameter("email");
    	String s2=request.getParameter("pwd");
    	String s3=request.getParameter("fName");
    	String s4=request.getParameter("lName");
    	String s5=request.getParameter("gender");
    	String s6=request.getParameter("dob");
    	
    	//Converting String into java.util.Date
    	SimpleDateFormat sdf=new SimpleDateFormat("dd/MM/yyyy");
    	Date dob=null;
		try {
			dob = sdf.parse(s6);
		} catch (ParseException e) {
			e.printStackTrace();
		}
    	
    	User userObj=new User();
    	userObj.setEmail(s1);
    	userObj.setPassword(s2);
    	userObj.setFirstName(s3);
    	userObj.setLastName(s4);
    	userObj.setGender(s5);
    	userObj.setDateOfBirth(dob);
    	
    	UserDao dao=new UserDaoImpl();
    	boolean r=dao.updateUser(userObj);
    	if(r){
    		HttpSession session=request.getSession();
    		request.setAttribute("msg", "User updated Succesfully");
    		session.setAttribute("user",userObj);
    		RequestDispatcher rd=request.getRequestDispatcher("ViewProfile.jsp");
    		rd.forward(request, response);
    	}
    	else {
    		RequestDispatcher rd=request.getRequestDispatcher("UpdateProfile.jsp");
    		rd.forward(request, response);
    				
    	}
    	
	}

}
