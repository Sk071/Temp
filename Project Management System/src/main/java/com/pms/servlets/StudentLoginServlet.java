package com.pms.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;

import com.pms.dao.StudentDao;
import com.pms.entity.Student;
import com.pms.helper.ConnectionProvider;

/**
 * Servlet implementation class Studentlogin
 */
public class StudentLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public StudentLoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

       //fetch login details
		PrintWriter out = response.getWriter();
		
		int slogid = Integer.parseInt(request.getParameter("slogid"));
		String spass = request.getParameter("spass");
		
		StudentDao sDao = new StudentDao(ConnectionProvider.getConnection());
		
		Student student = sDao.getStudentByIdandPassword (slogid, spass);
		
		if(student==null)
		{
			//login error
			out.println("invalid Details! try again");
		}
		
		else {
			//login success
			HttpSession session = request.getSession();
			session.setAttribute("currentstudent", student);
			response.sendRedirect("studentprofile.jsp");
		}
	}

}
