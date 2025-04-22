package servlet;

	import dao.PGDAO;
	import model.PGModel;

	import java.io.IOException;
	import java.util.List;
	import javax.servlet.*;
	import javax.servlet.http.*;

	public class SearchPGServlet extends HttpServlet {
	    protected void doGet(HttpServletRequest request, HttpServletResponse response)
	            throws ServletException, IOException {
	        
	        String searchQuery = request.getParameter("query");
	        PGDAO pgDao = new PGDAO();
	        List<PGModel> pgList = pgDao.searchPGs(searchQuery);

	        request.setAttribute("pgList", pgList); // Set results as a request attribute
	        RequestDispatcher dispatcher = request.getRequestDispatcher("home.jsp");
	        dispatcher.forward(request, response);
	    }
	}
	
	
	

