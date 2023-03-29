package com.aurionpro.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class listController
 */
@WebServlet("/listController")
public class listController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public listController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<String> items = new ArrayList<>();
		items.add("pepsi");
		items.add("bourbon");
		items.add("lays");
		items.add("Doritos");
		request.setAttribute("itemList", items);
		
		RequestDispatcher dispatcher= request.getRequestDispatcher("test.jsp");
		dispatcher.forward(request, response);
	}

	

}
