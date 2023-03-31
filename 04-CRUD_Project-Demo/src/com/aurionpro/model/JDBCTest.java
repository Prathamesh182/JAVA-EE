package com.aurionpro.model;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.DispatcherType;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

/**
 * Servlet implementation class JDBCTest
 */
@WebServlet("/JDBCTest")
public class JDBCTest extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JDBCTest() {
        super();
    }
    //define connection pool for injection
    @Resource(name="jdbc/studentdb")
    private DataSource datasource;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//Step1: Set up the print Writer
		PrintWriter out = response.getWriter();
		response.setContentType("text/plain");
		
		//Step2: Get a connection to database
//		Connection myconn = null;
//		Statement myStmt = null;
//		ResultSet myRs = null;
//		
//		try {
//			//Step3: Generate a connection to the datasource
//			myconn=datasource.getConnection();
//			
//			//Step4: Create a sql statement
//			String sql= "select * from student";
//			myStmt = myconn.createStatement();
//			
//			//Step5 : Execute SQL query
//			myRs = myStmt.executeQuery(sql);
//			
//			//Step6 : Process the result set
//			List<Student> studentList = new ArrayList<Student>();
//			
//			while(myRs.next()) {
//				int id= myRs.getInt("id"); 
//				String firstname = myRs.getString("first_name");
//				String lastname = myRs.getString("last_name");
//				String email = myRs.getString("email");
//				studentList.add(new Student(id,firstname,lastname,email));
//				
//			}
			
//			request.setAttribute("students", studentList);
//			RequestDispatcher dispatcher = request.getRequestDispatcher("student-list.jsp");
//			dispatcher.forward(request, response);
//			
//		}
//		catch(Exception exc)
//		{
//			exc.printStackTrace();
//		}
//	}

	}

}
