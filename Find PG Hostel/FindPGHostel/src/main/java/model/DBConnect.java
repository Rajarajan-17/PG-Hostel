package model;

	import java.sql.Connection;
	import java.sql.DriverManager;

	public class DBConnect {
	    private static final String URL = "jdbc:mysql://localhost:3306/findpg";
	    private static final String USER = "root"; // Change if you use a different DB user
	    private static final String PASS = "123456";     // Change if your MySQL has a password

	    public static Connection getConnect() {
	        Connection con = null;
	        try {
	            Class.forName("com.mysql.jdbc.Driver"); // For newer MySQL versions use: com.mysql.cj.jdbc.Driver
	            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/findpg", "root", "123456");
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	        return con;
	    }
	}
	
	

