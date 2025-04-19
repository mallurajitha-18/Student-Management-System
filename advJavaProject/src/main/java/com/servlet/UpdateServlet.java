package com.servlet;

import java.io.IOException;

import com.dao.StudentDAO;
import com.model.Studentmodel;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/saveafteredit")
public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public UpdateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Studentmodel student = new Studentmodel();
        student.setFirstname(request.getParameter("firstname"));
        student.setLastname(request.getParameter("lastname"));
        student.setUsername(request.getParameter("username"));  // Primary Key!
        student.setPassword(request.getParameter("password"));
        student.setEmail(request.getParameter("email"));
        student.setPhonenumber(Long.parseLong(request.getParameter("phonenumber")));

        StudentDAO dao = new StudentDAO();
        boolean updated = dao.updateStudent(student);

        if (updated) {
            response.sendRedirect("getall");
        } else {
            response.sendRedirect("error.jsp");
        }
    }


}
