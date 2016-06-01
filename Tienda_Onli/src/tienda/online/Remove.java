package tienda.online;

		import java.io.IOException;
		import java.io.PrintWriter;
		import java.util.List;
		import java.util.Map;

		import javax.jdo.Query;
		import javax.jdo.PersistenceManager;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
		import javax.servlet.http.HttpServlet;
		import javax.servlet.http.HttpServletRequest;
		import javax.servlet.http.HttpServletResponse;

		public class Remove extends HttpServlet {
			@Override
			protected void doGet(HttpServletRequest req, HttpServletResponse resp)
					throws ServletException, IOException {
				PrintWriter out = resp.getWriter();
				String cod= req.getParameter("cod");
				int b=0;
				
				PersistenceManager pm = PMF.get().getPersistenceManager();
				
//				Query q = pm.newQuery(Alumno.class,"name='miguel'");
				String query = "select from " +Persona.class.getName();
				Query q = pm.newQuery(query);
				q.setFilter("usuario == nombreParam");
				q.declareParameters("String nombreParam");

				try{
					List<Persona> personas = (List<Persona>)q.execute(cod);
					
					
					for(Persona a : personas){
						pm.deletePersistent(a);
						out.print(b++);
					}

					
					RequestDispatcher rd = req.getRequestDispatcher("/administrador.html");
					rd.forward(req, resp);
				}catch(Exception e){
					
				}finally{
					q.closeAll();
				}
			}
		}
		


	