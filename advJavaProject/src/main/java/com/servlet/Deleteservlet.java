package com.servlet;

import java.io.IOException;

import com.dao.StudentDAO;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/delete")
public class Deleteservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public Deleteservlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username=request.getParameter("username");
		StudentDAO sdao=new StudentDAO();
		boolean s=sdao.Delete(username);
		if(s==true) {
		response.sendRedirect("getall");
	}

	
	}

}
