package com.roy.abhisek;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

//@WebServlet("/add")
public class Capsule extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.getRequestDispatcher("login.jsp").forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String uname = request.getParameter("uname");
		String umail = request.getParameter("umail");
		String upass = request.getParameter("upass");
		
		SqlConnection d=new SqlConnection();

		if (d.check(uname,upass)) {
			request.getSession().invalidate();
			HttpSession session = request.getSession(true);
			session.setAttribute("username", uname);
			System.out.println("login success");
			response.sendRedirect("user?page=output");
		} else {
			response.sendRedirect("login");
		}

	}

}
