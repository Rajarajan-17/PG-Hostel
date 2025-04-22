package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class PGModel {
		
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
		
		
		
		
	    private int id;
	    private String pgname;
	    private String location;
	    private int rent;
	    private String maplink;

	    // Getters and Setters
	    public int getId() {
	        return id;
	    }
	    public void setId(int id) {
	        this.id = id;
	    }

	    public String getPgname() {
	        return pgname;
	    }
	    public void setPgname(String pgname) {
	        this.pgname = pgname;
	    }

	    public String getLocation() {
	        return location;
	    }
	    public void setLocation(String location) {
	        this.location = location;
	    }

	    public int getRent() {
	        return rent;
	    }
	    public void setRent(int rent) {
	        this.rent = rent;
	    }

	    public String getMaplink() {
	        return maplink;
	    }
	    public void setMaplink(String maplink) {
	        this.maplink = maplink;
	    }
	}
	

