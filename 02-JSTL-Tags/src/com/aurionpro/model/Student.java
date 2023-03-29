package com.aurionpro.model;

public class Student {
	private String name;
	private int rollno;
	private String email;
	private boolean scholarship;

	public Student(String name, int rollno, String email, boolean scholarship) {
		super();
		this.name = name;
		this.rollno = rollno;
		this.email = email;
		this.scholarship = scholarship;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getRollno() {
		return rollno;
	}

	public void setRollno(int rollno) {
		this.rollno = rollno;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public boolean isScholarship() {
		return scholarship;
	}

	public void setScholarship(boolean scholarship) {
		this.scholarship = scholarship;
	}

	@Override
	public String toString() {
		return "Student [name=" + name + ", rollno=" + rollno + ", email=" + email + ", scholarship=" + scholarship
				+ "]";
	}

}
