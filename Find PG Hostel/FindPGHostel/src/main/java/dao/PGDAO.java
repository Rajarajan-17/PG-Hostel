package dao;

	import java.sql.*;
	import java.util.*;
	import model.PGModel;
	import model.DBConnect;

	public class PGDAO {
		
		
		public boolean addPG1(PGModel pg) {
			// TODO Auto-generated method stub
			return false;
		}

		public PGModel getPGId(int pgId) {
			// TODO Auto-generated method stub
			return null;
		}
		
		public boolean addPG(PGModel pg) {
		    String query = "INSERT INTO pg (pgname, location, rent, maplink) VALUES (?, ?, ?, ?)";
		    try (Connection con = DBConnect.getConnect();
		         PreparedStatement stmt = con.prepareStatement(query)) {
		        
		        stmt.setString(1, pg.getPgname());
		        stmt.setString(2, pg.getLocation());
		        stmt.setInt(3, pg.getRent());
		        stmt.setString(4, pg.getMaplink());
		        
		        int rows = stmt.executeUpdate();
		       
		        return rows > 0; // Return true if PG added successfully
		    } catch (SQLException e) {
		        e.printStackTrace();
		        return false;
		    }
		}

		
		
		

	    public List<PGModel> getRandomPGs() {
	        List<PGModel> pgList = new ArrayList<>();
	        String query = "SELECT * FROM pg ORDER BY RAND() LIMIT 3"; // Fetch random PGs
	        
	        try (Connection con = DBConnect.getConnect();
	             Statement stmt = con.createStatement();
	             ResultSet rs = stmt.executeQuery(query)) {
	            
	            while (rs.next()) {
	                PGModel pg = new PGModel();
	                pg.setId(rs.getInt("id"));
	                pg.setPgname(rs.getString("pgname"));
	                pg.setLocation(rs.getString("location"));
	                pg.setRent(rs.getInt("rent"));
	                pg.setMaplink(rs.getString("maplink"));
	                pgList.add(pg);
	            }
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
	        return pgList;
	    }

	    public List<PGModel> searchPGs(String searchQuery) {
	        List<PGModel> pgList = new ArrayList<>();
	        String query = "SELECT * FROM pg WHERE pgname LIKE ? OR location LIKE ?";
	        
	        try (Connection con = DBConnect.getConnect();
	             PreparedStatement stmt = con.prepareStatement(query)) {
	            
	            stmt.setString(1, "%" + searchQuery + "%");
	            stmt.setString(2, "%" + searchQuery + "%");
	            ResultSet rs = stmt.executeQuery();
	            
	            while (rs.next()) {
	                PGModel pg = new PGModel();
	                pg.setId(rs.getInt("id"));
	                pg.setPgname(rs.getString("pgname"));
	                pg.setLocation(rs.getString("location"));
	                pg.setRent(rs.getInt("rent"));
	                pg.setMaplink(rs.getString("maplink"));
	                pgList.add(pg);
	            }
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
	        return pgList;
	    }

		
		
	}
	
