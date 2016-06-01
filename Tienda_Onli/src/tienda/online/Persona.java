package tienda.online;

import javax.jdo.annotations.IdGeneratorStrategy;
import javax.jdo.annotations.PersistenceCapable;
import javax.jdo.annotations.Persistent;
import javax.jdo.annotations.PrimaryKey;

import com.google.appengine.api.datastore.Key;

@PersistenceCapable
public class Persona {
	@PrimaryKey
	@Persistent(valueStrategy = IdGeneratorStrategy.IDENTITY)
	private Key key;
	
	@Persistent
	private String usuario;
	
	@Persistent
	private String clave;
	
	@Persistent
	private String nombre;
	
	@Persistent
	private String apellido;
	
	@Persistent
	private String email;
	
	@Persistent
	private String dni;

	@Persistent
	private String direccion;
	
	@Persistent
	private String celular;
	
	@Persistent
	private String sexo;
	
	
	
	//@Persistent
	//private boolean administrador;
	
	public Persona(String usuario, String clave,String nombre, String apellido, String email, String dni, String direccion, String celular, String sexo) {
		super();
		this.usuario = usuario;
		this.clave = clave;
		this.nombre = nombre;
		this.apellido = apellido;
		this.email = email;
		this.dni = dni;
		this.direccion = direccion;
		this.celular = celular;
		this.sexo = sexo;
		//this.administrador=administrador;
	}
	public String getUsuario() {
		return usuario;
	}
	public void setUsuario(String usuario) {
		this.usuario = usuario;
	}
	public String getClave() {
		return clave;
	}
	public void setClave(String clave) {
		this.clave = clave;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public String getApellido() {
		return apellido;
		
	}
    public void setApellido(String apellido) {
	this.apellido = apellido;
		}
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getDni() {
		return dni;
	}
	public void setDni(String dni){
		this.dni= dni;
	}
	public String getDireccion() {
		return direccion;
	}
	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}
	public String getCelular() {
		return celular;
	}
	public void setCelular(String celular) {
		this.celular = celular;
	}
	public String getSexo() {
		return sexo;
	}
	public void setSexo(String sexo)
	{
	 this.sexo=sexo;		
	}
	
	
	/*public boolean isAdministrador() {
		return administrador;
	}*/
	public Key getKey() {
		return key;
	}	
	@Override
	public String toString() {
		String resp = "nombre: "+nombre + "   apellido: " + apellido;  
		return resp;
	}
}