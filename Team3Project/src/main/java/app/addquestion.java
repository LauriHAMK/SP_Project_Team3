package app;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.dao;



@WebServlet(
		name = "AddQuestion",
		urlPatterns = {"/addquestion"}
		)
public class addquestion extends HttpServlet {

	
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws IOException, ServletException {
		response.setCharacterEncoding("UTF-8");
		doGet(request, response);
	}
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws IOException, ServletException {
		response.setContentType("text/html");
		
		// Read parameters to Model
		questions question=readQuestion(request);
	
		// Create connection
		dao dao=new dao();
		
		// Save value and query total list
		dao.createQuestion(question);
		

		dao.close();
		
		
		response.sendRedirect("/questionlist");

	}


	private questions readQuestion(HttpServletRequest request) {
		// TODO Auto-generated method stub
		questions question=new questions();
		question.setKysymys(request.getParameter("kysymys"));
		return question;
	}
	
}