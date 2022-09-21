package com.pms.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

import org.apache.catalina.mbeans.ClassNameMBean;

import com.pms.dao.StudentDao;
import com.pms.entity.Student;
import com.pms.helper.ConnectionProvider;

/**
 * Servlet implementation class StudentRegisterServlet
 */
public class StudentRegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public StudentRegisterServlet() {
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
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		//fetch values
		int sid = Integer.parseInt(request.getParameter("sid"));
		String fname = request.getParameter("fname");
		
		out.println(fname);
		
		String lname = request.getParameter("lname");
		String gender = request.getParameter("gender");
		String course = request.getParameter("course");
		String year = request.getParameter("year");
		String pass = request.getParameter("pass");
		
		//create Student object and pass to StudentDao
		Student student = new Student(sid,fname,lname,gender,course,year,pass);
		
		//create StudentDao object
        StudentDao sd = new StudentDao(ConnectionProvider.getConnection());
        
       if( sd.saveStudent(student))
       {
    	   out.println("<h1>Data Saved</h1>");
       }
       else {
    	   out.println("<h1>Data Not Saved</h1>");
	}
		
	}

}
