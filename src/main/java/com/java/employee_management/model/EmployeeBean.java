package com.java.employee_management.model;

import java.io.Serializable;

public class EmployeeBean implements Serializable{
	private static final long serialVersionUID = 1L;
	
	private Long id;
	private String fname;
	private String lname;
	private String email;
	private String phone;
	private String userid;
	private String password;
	private String role;
	private String dob;
	private int deptid;
	
	public EmployeeBean() {
	}
	

	public Long getId() {
		return id;
	}


	public void setId(Long id) {
		this.id = id;
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


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getPhone() {
		return phone;
	}


	public void setPhone(String phone) {
		this.phone = phone;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}


	public String getUserid() {
		return userid;
	}


	public void setUserid(String userid) {
		this.userid = userid;
	}


	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public String getDob() {
		return dob;
	}
	public void setDob(String dobString) {
		this.dob = dobString;
	}

	public int getDeptid() {
		return deptid;
	}

	public void setDeptid(int deptid) {
		this.deptid = deptid;
	}
}
