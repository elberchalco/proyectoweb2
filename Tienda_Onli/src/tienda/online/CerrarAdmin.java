
package tienda.online;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.*;

@SuppressWarnings("serial")
public class CerrarAdmin extends HttpServlet {
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		
			RequestDispatcher mandar = null ;
			
			String enviar = request.getParameter("enviar");
			PrintWriter out = response.getWriter();
			
			switch (enviar){
		
			case "Cerrar.":
				mandar=getServletContext().getRequestDispatcher("/index.html");
				break;
			
			default :
			 	mandar = getServletContext().getRequestDispatcher("/index.html");	
			break;
			}
			mandar.forward(request, response);
			
		
	}
}