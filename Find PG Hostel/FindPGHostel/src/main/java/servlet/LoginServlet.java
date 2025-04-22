package servlet;

	import java.io.IOException;
	import javax.servlet.*;
	import javax.servlet.http.*;

	public class LoginServlet extends HttpServlet {
	    protected void doPost(HttpServletRequest request, HttpServletResponse response)
	            throws ServletException, IOException {
	        
	        String username = request.getParameter("username");
	        String password = request.getParameter("password"); // You can add validation if needed

	        HttpSession session = request.getSession();
	        session.setAttribute("username", username);

	        response.sendRedirect("home.jsp");
	    }

	    protected void doGet(HttpServletRequest request, HttpServletResponse response)
	            throws ServletException, IOException {
	        // For Skip Option
	        HttpSession session = request.getSession();
	        session.setAttribute("username", "Guest");
	        response.sendRedirect("home.jsp");
	    }
	}
	


