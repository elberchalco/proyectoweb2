
package tienda.online;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.jdo.Query;
import javax.jdo.PersistenceManager;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")

public class Modificar extends HttpServlet {
@SuppressWarnings("unchecked")
protected void doPost(HttpServletRequest req, HttpServletResponse resp)
		throws ServletException, IOException {
	resp.setContentType("text/html");
	PrintWriter out = resp.getWriter();
	String cod= req.getParameter("usuario");
	int b=0;
	
	PersistenceManager pm = PMF.get().getPersistenceManager();
	
//	Query q = pm.newQuery(Alumno.class,"name='miguel'");
	String query = "select from " +Persona.class.getName();
	Query q = pm.newQuery(query);
	q.setFilter("usuario == nombreParam");
	q.declareParameters("String nombreParam");
	
	try {
		List<Persona> personas = (List<Persona>)q.execute(cod);
		
		for (Persona a : personas) {
			
			String usuario = req.getParameter("usuario");
			String clave = req.getParameter("clave");
			String dni = req.getParameter("dni");
			String nombre = req.getParameter("nombre");
			String apellido =req.getParameter("apellido");
			String sexo = req.getParameter("sexo");
			String celular = req.getParameter("celular");
			String correo = req.getParameter("correo");
			
			a.setUsuario(usuario);
			a.setClave(clave);
			a.setDni(dni);
			a.setNombre(nombre);
			a.setApellido(apellido);
			a.setSexo(sexo);
			a.setCelular(celular);
			a.setEmail(correo);
			resp.getWriter().println("Datos grabados correctamente ");
			break;
		}
	}catch(Exception e){
	}finally{
		q.closeAll();
	}
}
}
	



	

