
package modelo;


public class Alumnos {
    private int id;
    private String nombre;
    private String apellido;
    private String email;
    private String telefono;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
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

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }
    
    
    
    public Alumnos(int id, String n, String apellido, String email, String telefono){
        this.id=id;
        this.nombre=n;
        this.apellido=apellido;
        this.email=email;
        this.telefono=telefono;
    }
}
