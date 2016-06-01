package tienda.online;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
//import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class CerrarSesion extends HttpServlet{
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		req.getSession(true).setAttribute("persona",null);	
		req.getSession(true).setAttribute("id",null);	
		/*RequestDispatcher rd = getServletContext().getRequestDispatcher("/index.jsp");
		rd.forward(req, resp);*/	
		resp.sendRedirect("/index.jsp");
	}
}
