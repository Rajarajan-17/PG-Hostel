package servlet;

	import dao.PGDAO;
	import model.PGModel;

	import java.io.IOException;
	import javax.servlet.*;
	import javax.servlet.http.*;

	public class PGDetailsServlet extends HttpServlet {
	    protected void doGet(HttpServletRequest request, HttpServletResponse response)
	            throws ServletException, IOException {
	        
	        int pgId = Integer.parseInt(request.getParameter("id"));
	        PGDAO pgDao = new PGDAO();
	        PGModel pg = pgDao.getPGId(pgId); // Fetch PG details by ID

	        request.setAttribute("pg", pg);
	        RequestDispatcher dispatcher = request.getRequestDispatcher("pgDetails.jsp");
	        dispatcher.forward(request, response);
	    }
	}
	
