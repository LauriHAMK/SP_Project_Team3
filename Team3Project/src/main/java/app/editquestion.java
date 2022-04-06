package app;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import app.security.SecurityUtils;
import dao.dao;



/*
 * The name of the servlet is AddGame
 * and the servlet's URI (url-pattern) is 'addgame'
 */
@WebServlet(
    name = "editquestion",
    urlPatterns = {"/editquestion"}
)
public class editquestion extends HttpServlet {
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws IOException, ServletException {
		HttpSession session = request.getSession();
		
		String idValue = request.getParameter("kysymys_id");
		
		if ( idValue != null) {
			try {
				int id = Integer.parseInt(idValue);
				
				dao dao = new dao();
				Question question = dao.getQuestionInfo(id);
				
				session.setAttribute("questions", question);
				
				RequestDispatcher rd = request.getRequestDispatcher("jsp/editquestion.jsp");
				rd.forward(request, response);
				
			} catch (Exception e) {
				e.printStackTrace();
			}
			
		} else {
			response.sendRedirect("/questionlist");
		}
	
	}
	
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws IOException, ServletException {

		// Create connection
		dao dao=new dao();
		Question question = readQuestions(request);
		
		dao.updateQuestion(question);
		
		dao.close();
		
		response.sendRedirect("/questionlist");
	}
	
	private Question readQuestions(HttpServletRequest request) {
		// TODO Auto-generated method stub
		
		Question question=new Question();
		question.setId(Integer.parseInt(request.getParameter("kysymys_id")));
		question.setQuestion(request.getParameter("kysymys"));
		return question;
	}
 
}