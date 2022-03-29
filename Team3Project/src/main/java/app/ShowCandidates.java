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

@WebServlet(
		name = "ShowCandidates",
		urlPatterns = {"/showcandidates"}
		)
public class ShowCandidates extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws IOException, ServletException {
		
		HttpSession session = request.getSession();
		
		Dao dao = new Dao();
		ArrayList<Candidate> candidates = dao.readAllCandidates();
		
		session.setAttribute("allcandidates", candidates);
		
		RequestDispatcher rd = request.getRequestDispatcher("showallcandidates.jsp");
		rd.forward(request, response);
	
	}
	
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws IOException, ServletException {
		doGet(request, response);
	}

}
