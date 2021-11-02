/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package clase2java;

/**
 *
 * @author veron
 */
public class ingreso {
    private String usuario, pass;
    private String miUsuario="Vero"
    private String miPass="123456"
    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }
    
    public boolean Validar(){
        return miUsuario.equals(this.usuario) && miPass.equals(this.pass);
    }
    
            
   /* public ingreso(String usuario, string pass){
            this.usuario=usuario;
            this.pass=pass;
    }*/
}
