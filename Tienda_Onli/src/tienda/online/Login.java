package tienda.online;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.jdo.PersistenceManager;
import javax.jdo.Query;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
//import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@SuppressWarnings("serial")
public class Login extends HttpServlet{	
	
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)	
			throws ServletException, IOException {
		PersistenceManager pm = PMF.get().getPersistenceManager();
		PrintWriter out = resp.getWriter();
		resp.setContentType("text/html");
		String usuario = req.getParameter("usuario");
		String clave = req.getParameter("clave");
		
		
		
		Query q = pm.newQuery(Persona.class);
		q.setFilter("usuario == usuarioParam");
		q.declareParameters("String usuarioParam");	
		
		if(usuario.equals("admin") && clave.equals("1234")){
		
			RequestDispatcher rd = req.getRequestDispatcher("/administrador.html");
			rd.forward(req, resp);	
		}
		
		else{
	
		try{
			@SuppressWarnings("unchecked")
			List<Persona> personas = (List<Persona>) q.execute(usuario);			
			out.println("<body bgcolor='#489cdf' text=white>");
			if(personas.isEmpty()){
				out.println("Usuario no registrado");
			}
			else{
				for(Persona p: personas){
					if(clave.equals(p.getClave())){
						//out.println(""+p.getKey().toString());
						String []arr={p.getUsuario(),p.getClave(),p.getNombre(),p.getApellido(),p.getEmail(),p.getDni(),p.getDireccion(),p.getCelular(),p.getKey().toString()};
						req.getSession(true).setAttribute("persona",arr);
						//req.getSession(true).setAttribute("esAdmin",p.isAdministrador());
						req.getSession(true).setAttribute("id",p.getKey().getId());
						/*if(p.isAdministrador()){
							out.print("Inicio de sesión correcto.");
							out.print("<a href='indexAdmin.jsp' target='_top'>Continuar</a>");
						}
						else{						
							out.print("Inicio de sesión correcto.");
							out.print("<a href='indexUser.jsp' target='_top'>Continuar</a>");
						}
						*/
						RequestDispatcher rd = getServletContext().getRequestDispatcher("/index.jsp");
						rd.forward(req, resp);
						//out.print("Inicio de sesión correcto.");
						//out.print("<a href='indexUser.jsp' target='_top'>Continuar</a>");
						
					}	
					else{
						out.print("Inicio de sesión incorrecto.Verifique su clave.");
					}
				}
			}
		}
		
		catch(Exception e){
			
		}
		finally{
			 q.closeAll();
		}
	}
}}