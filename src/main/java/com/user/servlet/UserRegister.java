package com.user.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.UserDao;
import com.db.DBConnect;
import com.entity.User;
@WebServlet("/user_register")
public class UserRegister extends HttpServlet{
@Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
	try {
		String fullname=req.getParameter("fullname");
		String email=req.getParameter("email");
		String password=req.getParameter("password");
		User u=new User(fullname,email,password);
		UserDao userdao=new UserDao(DBConnect.getConn());
		HttpSession session=req.getSession();
		boolean f=userdao.userRegister(u);
		if (f) {
		    // Registration was successful
		    session.setAttribute("SucMsg", "Register Successfully");
		    resp.sendRedirect("user/User_Login.jsp");
		}

		else {
		    // Registration was unsuccessful
		    session.setAttribute("errormsg", "Register Unsuccessfully");
		    resp.sendRedirect("user/signup.jsp");
		}

	} catch (Exception e) {
		
	}
}
}
