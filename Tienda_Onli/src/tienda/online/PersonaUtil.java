package tienda.online;
import java.util.List;
import javax.jdo.PersistenceManager;
import javax.jdo.Query;

public class PersonaUtil {
//Cuantos datos mostrara en la consulta
private final static int FETCH_MAX_RESULTS = 50;
static PersistenceManager pm = PMF.get().getPersistenceManager();
//Metodo para insertar un dato
public static void insertarUsuario(String usuario, String clave,String nombre,
		String apellido,String email,String dni,String direccion,
		String celular ,String sexo){
 //LLamamos a la clase que tendra la persistencia
 //Creamos nuestra variable del tipo Persona
 final Persona person= new Persona(usuario,clave,nombre,apellido,email,dni
		 ,direccion,celular,sexo);
 //Y hacemos el dato que sea persistente
 pm.makePersistent(person);
}

//Para consultar los tutoriales por nombres
@SuppressWarnings("unchecked")
public static List<Persona> tutorialesPorNombres(String nombre){
 final PersistenceManager pm = PMF.get().getPersistenceManager();
 String query = " select from " +
 Persona.class.getName() +
 " where nombre == '" +
 nombre + "'";
 List<Persona> nombres = (List<Persona>)pm.newQuery(query).execute();
 return(nombres);
}

//Consulta para los 
@SuppressWarnings("unchecked")
public static List<Persona> tutorialesPorId(long id){
 final PersistenceManager pm = PMF.get().getPersistenceManager();
 String query = " select from " +
 Persona.class.getName() +
 " where id == '" +
 id + "'";
 List<Persona> ids = (List<Persona>)pm.newQuery(query).execute();
 return(ids);
}


//Para consulta todos los alumnos
@SuppressWarnings("unchecked")
public static List<Persona> todosPersonas(){
 final PersistenceManager pm = PMF.get().getPersistenceManager();
 final Query query = pm.newQuery(Persona.class);
 query.setRange(0, FETCH_MAX_RESULTS);
 return (List<Persona>) query.execute();
}


//Consulta Apellido Materno
@SuppressWarnings("unchecked")
public static List<Persona> porApellidoMaterno(String apellidoMaterno){
 final PersistenceManager pm = PMF.get().getPersistenceManager();
 String query = " select from " +
 Persona.class.getName() +
 " where apellidoMaterno == '" +
 apellidoMaterno + "'";
 List<Persona> apellidoM= (List<Persona>)pm.newQuery(query).execute();
 return(apellidoM);
}

//Consulta Apellido Paterno
@SuppressWarnings("unchecked")
public static List<Persona> porApellidoPaterno(String apellidoPaterno){
 final PersistenceManager pm = PMF.get().getPersistenceManager();
 String query = " select from " +
 Persona.class.getName() +
 " where apellidoPaterno == '" +
 apellidoPaterno + "'";
 List<Persona> apellidoP= (List<Persona>)pm.newQuery(query).execute();
 return(apellidoP);
}

//Consultar los usuarios registrados
@SuppressWarnings("unchecked")
public static List<Persona> porUsuario(String usuario){
 final PersistenceManager pm = PMF.get().getPersistenceManager();
 String query = " select from " +
 Persona.class.getName() +
 " where usuario == '" +
 usuario + "'";
 List<Persona> usuarios = (List<Persona>)pm.newQuery(query).execute();
 return(usuarios);
}
public static void EliminarTodo(Persona persona) {
	pm.deletePersistent(persona);
}
}
