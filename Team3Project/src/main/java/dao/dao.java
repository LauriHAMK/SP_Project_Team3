package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import app.Candidate;
import app.questions;




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
			ResultSet RS = stmt.executeQuery("select * from ehdokkaat");
			while (RS.next()) {
				Candidate candidate = new Candidate();
				candidate.setEhdokas_id(RS.getInt("ehdokas_id"));
				candidate.setSukunimi(RS.getString("sukunimi"));
				candidate.setEtunimi(RS.getString("etunimi"));
				candidate.setPuolue(RS.getString("puolue"));
				candidate.setKotipaikkakunta(RS.getString("kotipaikkakunta"));
				candidate.setIka(RS.getInt("ika"));
				candidate.setMiksi_eduskuntaan(RS.getString("miksi_eduskuntaan"));
				candidate.setMita_asioita_haluat_edistaa(RS.getString("mita_asioita_haluat_edistaa"));
				candidate.setAmmatti(RS.getString("ammatti"));
				list.add(candidate);
			}
			return list;
		} catch (SQLException e) {
			return null;
		}
	}
	public ArrayList<questions> readAllquestions() {
		ArrayList<questions> questions=new ArrayList<>();
		Statement stmt=null;
		int count=0;
		try {
			stmt = conn.createStatement();
			ResultSet rs=stmt.executeQuery("select * from KYSYMYKSET");
			while (rs.next()) {
				questions game=new questions();
				game.setKysymys_id(rs.getInt("KYSYMYS_ID"));
				game.setKysymys(rs.getString("KYSYMYS"));
				questions.add(game);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return questions;
	}
	
	public questions getGuestionInfo(int id) {
		questions result = null;
		String sql = "select * from KYSYMYKSET where KYSYMYS_ID = ?";
		try {
			PreparedStatement stmt = conn.prepareStatement(sql);
						
			stmt.setInt(1, id);
			
			ResultSet resultset = stmt.executeQuery();
			
			if (resultset.next()) {
				result = new questions();
				result.setKysymys_id(resultset.getInt("KYSYMYS_ID"));
				result.setKysymys(resultset.getString("KYSYMYS"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	}
	
	public int updateQuestion(questions question) {
		int count = 0;
		String sql = "update KYSYMYKSET set KYSYMYS_ID = ?, KYSYMYS = ? where KYSYMYS_ID = ?";
		try {
			PreparedStatement stmt = conn.prepareStatement(sql);
			
			stmt.setInt(1, question.getKysymys_id());
			stmt.setString(2, question.getKysymys());
			stmt.setInt(3, question.getKysymys_id());
			
			count = stmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return count;
	}
	
	public int deleteQuestion(questions question) {
		int count = 0;
		String sql = "DELETE FROM KYSYMYKSET WHERE KYSYMYS_ID = ?";
		try {
			PreparedStatement stmt = conn.prepareStatement(sql);
			
			stmt.setInt(1, question.getKysymys_id());

			
			count = stmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return count;
	}
		
}