package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import app.Candidate;
import app.Question;



public class dao {
	private static Connection conn;
	public dao() {
		try {
			Class.forName("com.mysql.jdbc.Driver").newInstance();
			conn=java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/vaalikone", "appuser", "kukkuu");
		} catch (SQLException | InstantiationException | IllegalAccessException | ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public void close() {
		try {
			conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public void addAdmin(String username, String pw, String salt) {
		String sql = "insert into adminaccount (username, hashedpassword, salt) values(?,?,?)";
		try {
			PreparedStatement stmt = conn.prepareStatement(sql);
			
			stmt.setString(1, username);
			stmt.setString(2, pw);
			stmt.setString(3, salt);
			
			stmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public String getUserSalt(String username) {
		String result = "";
		String sql = "select salt from adminaccount where username = ?";
		try {
			PreparedStatement stmt = conn.prepareStatement(sql);
			stmt.setString(1, username);
			ResultSet rs = stmt.executeQuery();
			
			if (rs.next() ) {
				result = rs.getString("salt");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}
	
	public String getUserPasswordHash(String username) {
		String result = "";
		String sql = "select hashedpassword from adminaccount where username = ?";
		try {
			PreparedStatement stmt = conn.prepareStatement(sql);
			stmt.setString(1, username);
			ResultSet rs = stmt.executeQuery();
			
			if (rs.next() ) {
				result = rs.getString("hashedpassword");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}
	
	public ArrayList<Candidate> readAllCandidates() {
		ArrayList<Candidate> list = new ArrayList<>();
		try {
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery("select * from ehdokkaat");
			while (rs.next()) {
				Candidate candidate = new Candidate();
				candidate.setEhdokas_id(rs.getInt("ehdokas_id"));
				candidate.setSukunimi(rs.getString("sukunimi"));
				candidate.setEtunimi(rs.getString("etunimi"));
				candidate.setPuolue(rs.getString("puolue"));
				candidate.setKotipaikkakunta(rs.getString("kotipaikkakunta"));
				candidate.setIka(rs.getInt("ika"));
				candidate.setMiksi_eduskuntaan(rs.getString("miksi_eduskuntaan"));
				candidate.setMita_asioita_haluat_edistaa(rs.getString("mita_asioita_haluat_edistaa"));
				candidate.setAmmatti(rs.getString("ammatti"));
				list.add(candidate);
			}
			return list;
		} catch (SQLException e) {
			return null;
		}
	}
	
	public ArrayList<Question> readAllQuestions() {
		ArrayList<Question> list = new ArrayList<>();
		try {
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery("select * from kysymykset");
			while (rs.next()) {
				Question question = new Question();
				question.setId(rs.getInt("kysymys_id"));
				question.setQuestion(rs.getString("kysymys"));
				list.add(question);
			}
			return list;
		} catch (SQLException e) {
			return null;
		}
	}
}