package com.aurionpro.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.HttpCookie;
import java.net.URLEncoder;

import com.aurionpro.controller.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class CookieController
 */
@WebServlet("/CookieController")
public class CookieController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public CookieController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		

		PrintWriter out = response.getWriter();
		Cookie[] cookie = request.getCookies();
		int count = 0;
		boolean flag = false;
		if (cookie != null) {
			for (Cookie x : cookie) {
				if (x.getName().equals("counter")) {
					flag = true;
					count = Integer.parseInt(x.getValue());
					count = count + 1;
					Cookie cookie1 = new Cookie("counter", Integer.toString(count));
					response.addCookie(cookie1);
				}
			}
		}

		if (flag == false) {
			Cookie cookies = new Cookie("counter", Integer.toString(count));
			response.addCookie(cookies);
		}
		response.setContentType("text/html");
		out.println("old Value: " + count);
		out.println("new Value: " + (count + 1));
//		session.setMaxInactiveInterval(10);

	}

}
