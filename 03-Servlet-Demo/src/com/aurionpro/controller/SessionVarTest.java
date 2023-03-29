package com.aurionpro.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class SessionVarTest
 */
@WebServlet("/SessionVarTest")
public class SessionVarTest extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public SessionVarTest() {
		super();
		// TODO Auto-generated constructor stub
	}

	int oldvalue = 0;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");

		PrintWriter out = response.getWriter();

		HttpSession session = request.getSession();
		session.setAttribute("OldAttribute", oldvalue);
		session.setMaxInactiveInterval(30 * 60);
		if (session.getAttribute("OldAttribute") != null) {

			out.println("old value: " + session.getAttribute("OldAttribute"));
			oldvalue++;
			session.setAttribute("OldAttribute", oldvalue);
			out.println("<br>");
			out.println("new value: " + session.getAttribute("OldAttribute"));

		}
	}

	
}
// Easy Method
//		Integer count =(Integer) session.getAttribute("counter");
//		if(count==null) {
//			count=0;
//			session.setAttribute("counter", count);
//		}
//		else {
//			session.setAttribute("counter", ++count);
//		}
//		
//		out.println("old Value: "+count);
//		out.println("new Value: "+(count+1));
//		session.setMaxInactiveInterval(10);
//		}
