package app;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import app.security.SecurityUtils;
import dao.dao;

@WebServlet(
    name = "AdminLogin",
    urlPatterns = {"/adminlogin"}
)
public class AdminLogin extends HttpServlet {

	  @Override
	  public void doGet(HttpServletRequest request, HttpServletResponse response) 
	      throws IOException, ServletException {

	    response.sendRedirect("index.html");

	  }
	  @Override
	  public void doPost(HttpServletRequest request, HttpServletResponse response) 
		      throws IOException {
		  
		    response.setContentType("text/plain");
		    response.setCharacterEncoding("UTF-8");
		  
		  	dao dao = new dao();
		  	
		  	String uname = request.getParameter("username");
		  	String password = request.getParameter("password");
		  	
		  	String salt = dao.getUserSalt(uname);
		  	String hashpw = dao.getUserPasswordHash(uname);
		  	
		  	dao.close();
		  	
		  	if ( SecurityUtils.isPassordOk(hashpw, password, salt) ) {
		  		response.getWriter().println("Login success");
		  		
		  		HttpSession session = request.getSession();
		  		
		  		session.setAttribute("LoggedUser", uname);
		  		
		  	} else {
		  		response.getWriter().println("Login failed");
		  	}
	  }
	}
