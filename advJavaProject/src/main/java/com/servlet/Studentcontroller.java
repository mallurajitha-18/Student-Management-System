package com.servlet;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import com.dao.StudentDAO;
import com.model.Studentmodel;

@WebServlet("/Register")
public class Studentcontroller extends HttpServlet {

	
       
   
   
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("======================================");
	String firstname=	request.getParameter("firstname");
	String lastname=request.getParameter("lastname");
	String username=request.getParameter("username");
	String password=request.getParameter("password");

	String email=request.getParameter("email");
	System.out.println(email);
	long phonenumber=Long.parseLong(request.getParameter("phonenumber"));
	System.out.println(firstname);
	System.out.println("==========================================================");
	Studentmodel sm=new Studentmodel();
	sm.setFirstname(firstname);
	sm.setLastname(lastname);
	sm.setUsername(username);
	sm.setPassword(password);

	sm.setEmail(email);
   
	sm.setPhonenumber(phonenumber);
System.out.println(sm);
	StudentDAO sd=new 	StudentDAO ();
	String status=sd.insertstudent(sm);
		System.out.println("hello");
		System.out.println(status);
	
	if(status.equals("sucess")) {
	RequestDispatcher rd=request.getRequestDispatcher("Login.jsp");
	rd.forward(request, response);
	}
	else {
		RequestDispatcher rd=request.getRequestDispatcher("index.jsp");	
		rd.forward(request, response);
	}

}
}
