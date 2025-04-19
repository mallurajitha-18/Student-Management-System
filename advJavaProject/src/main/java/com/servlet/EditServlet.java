package com.servlet;

import java.io.IOException;

import com.dao.StudentDAO;
import com.model.Studentmodel;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/updateservlet")
public class EditServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String username=request.getParameter("username");
		System.out.println(username+"----------------");
		StudentDAO sdao=new StudentDAO();
		Studentmodel smm=sdao.getById(username);
		System.out.println(smm);
		  
		request.setAttribute("smm", smm);
		RequestDispatcher rd=request.getRequestDispatcher("edit.jsp");
		rd.forward(request,response);
		 
			
		
	}

	

}
