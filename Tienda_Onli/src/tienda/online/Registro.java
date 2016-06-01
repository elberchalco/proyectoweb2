package tienda.online;

import java.io.IOException;

import javax.jdo.PersistenceManager;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.*;

@SuppressWarnings("serial")
public class Registro extends HttpServlet {
	public void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws IOException {
		String usuario = req.getParameter("usuario");
		String clave = req.getParameter("clave");
		String nombre = req.getParameter("nombre");
		String apellido = req.getParameter("apellido");
		String email = req.getParameter("email");
		String dni = req.getParameter("dni");
		String direccion= req.getParameter("direccion");
		String celular = req.getParameter("celular");
		String sexo = req.getParameter("sexo");
		//////
		
		/////
		Persona p = new Persona(usuario,clave,nombre, apellido, email, dni,direccion,celular,sexo);
		
		PersistenceManager pm = PMF.get().getPersistenceManager();
		try{
			pm.makePersistent(p);
			RequestDispatcher rd = req.getRequestDispatcher("/index.jsp");
			rd.forward(req, resp);
			
		}catch(Exception e){
			System.out.println(e);
			resp.getWriter().println("Ocurrió un error, <a href='index.html'>Vuelva a intentarlo</a>");
		}finally{
			pm.close();
		}
	}
}
