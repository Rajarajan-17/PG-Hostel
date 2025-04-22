package servlet;

	import dao.PGDAO;
	import model.PGModel;

	import java.io.IOException;
	import javax.servlet.*;
	import javax.servlet.http.*;

	public class AddPGServlet extends HttpServlet {
	    protected void doPost(HttpServletRequest request, HttpServletResponse response)
	            throws ServletException, IOException {

	        String pgname = request.getParameter("pgname");
	        String location = request.getParameter("location");
	        int rent = Integer.parseInt(request.getParameter("rent"));
	        String maplink = request.getParameter("maplink");

	        PGModel pg = new PGModel();
	        pg.setPgname(pgname);
	        pg.setLocation(location);
	        pg.setRent(rent);
	        pg.setMaplink(maplink);

	        PGDAO pgDao = new PGDAO();
	        boolean isAdded = pgDao.addPG(pg);  // Add the PG to the database

	        if (isAdded) {
	            response.sendRedirect("home.jsp"); // Redirect to home page after successful addition
	        } else {
	            response.sendRedirect("addpg.jsp"); // Stay on addpg.jsp if error occurs
	        }
	    }
	}
	
	

