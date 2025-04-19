package com.servlet;

import java.io.IOException;

import com.dao.StudentDAO;
import com.model.Loginmodel;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 * Servlet implementation class ControllerLogin
 */
@WebServlet("/Signin")
public class ControllerLogin extends HttpServlet {

	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		Loginmodel m=new Loginmodel();
		m.setUsername(username);
		m.setPassword(password);
		StudentDAO s=new StudentDAO();
		String status=s.loginstudent(m);
		HttpSession session=request.getSession();
		if(status.equals("success")) {
			request.setAttribute("un", username);
			RequestDispatcher rd=request.getRequestDispatcher("homepage.jsp");
			
			rd.forward(request, response);
			}
			else {
				String error="something went wrong";
				request.setAttribute("error", error);
				RequestDispatcher rd=request.getRequestDispatcher("Login.jsp");	
				rd.forward(request, response);
			}
		
		
		
	}

}
