package com.aurionpro.model;

import java.sql.Connection;
import java.sql.ResultSet;

import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

public class StudentDbUtil {
	
	DataSource datasource;

	public StudentDbUtil(DataSource datasource) {
		super();
		this.datasource = datasource;
	}

	public List<Student> getAllStudents() throws Exception {

		Connection myconn = null;
		Statement myStmt = null;
		ResultSet myRs = null;
		
		try {
			//Step3: Generate a connection to the datasource
			myconn=datasource.getConnection();
			
			//Step4: Create a sql statement
			String sql= "select * from student";
			myStmt = myconn.createStatement();
			
			//Step5 : Execute SQL query
			myRs = myStmt.executeQuery(sql);
			
			//Step6 : Process the result set
			List<Student> studentList = new ArrayList<Student>();
			
			while(myRs.next()) {
				int id= myRs.getInt("id"); 
				String firstname = myRs.getString("first_name");
				String lastname = myRs.getString("last_name");
				String email = myRs.getString("email");
				studentList.add(new Student(id,firstname,lastname,email));
				
			}
		return studentList;
	}
		finally {
			close(myconn,myStmt,myRs);
		}
	

}

	private void close(Connection myconn, Statement myStmt, ResultSet myRs) throws Exception {
		if(myconn!=null) {
			myconn.close();
		}
		if(myStmt!=null) {
			myStmt.close();
		}
		if(myRs!=null) {
			myRs.close();
		}
	}
	
}	
