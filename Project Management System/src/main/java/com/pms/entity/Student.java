package com.pms.entity;

public class Student {

	private  int sid;
	private String fname;
	private String lname;
	private String gender;
	private String course;
	private String year;
	private String pass;

	public Student() {
		// TODO Auto-generated constructor stub
	}

	public Student(int sid, String fname, String lname, String gender, String course, String year, String pass) {
		this.sid = sid;
		this.fname = fname;
		this.lname = lname;
		this.gender = gender;
		this.course = course;
		this.year = year;
		this.pass = pass;
	}

	public int getSid() {
		return sid;
	}

	public void setSid(int sid) {
		this.sid = sid;
	}

	public String getFname() {
		return fname;
	}

	public void setFname(String fname) {
		this.fname = fname;
	}

	public String getLname() {
		return lname;
	}

	public void setLname(String lname) {
		this.lname = lname;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getCourse() {
		return course;
	}

	public void setCourse(String course) {
		this.course = course;
	}

	public String getYear() {
		return year;
	}

	public void setYear(String year) {
		this.year = year;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

}
