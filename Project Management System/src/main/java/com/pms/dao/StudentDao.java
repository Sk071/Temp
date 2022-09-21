package com.pms.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.pms.entity.Student;

public class StudentDao {

	private Connection con;

	// constructor
	public StudentDao(Connection con) {
		super();
		this.con = con;
	}

	// method to insert student data
	public boolean saveStudent(Student student) {
		boolean f = false;
		// student-->database
		try {

			String q = "insert into student(sid,fname,lname,gender,course,year,password) values(?,?,?,?,?,?,?)";

			PreparedStatement pst = this.con.prepareStatement(q);

			pst.setInt(1, student.getSid());
			pst.setString(2, student.getFname());
			pst.setString(3, student.getLname());
			pst.setString(4, student.getGender());
			pst.setString(5, student.getCourse());
			pst.setString(6, student.getYear());
			pst.setString(7, student.getPass());

			pst.executeUpdate();

			f = true;

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return f;
	}

	// get student by id and password
	public Student getStudentByIdandPassword(int sid, String spass) {
		Student student = null;
		try {

			String qString = "select * from student where sid = ? and password = ?";
			PreparedStatement pst = con.prepareStatement(qString);
			pst.setInt(1, sid);
			pst.setString(2, spass);

			ResultSet rs = pst.executeQuery();

			if (rs.next()) {
				student = new Student();
				student.setSid(rs.getInt("sid"));
				student.setFname(rs.getString("fname"));
				student.setLname(rs.getString("lname"));
				student.setGender(rs.getString("gender"));
				student.setCourse(rs.getString("course"));
				student.setYear(rs.getString("year"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return student;

	}

}
