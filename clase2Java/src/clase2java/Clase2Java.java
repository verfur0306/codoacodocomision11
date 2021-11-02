
package clase2java;

import java.util.Scanner;

public class Clase2Java {

  
    public static void main(String[] args) {
      Scanner scanner = new Scanner(System.in);
        System.out.println("Ingrese su nombre: ");
        String nombre = scanner.nextLine();
        System.out.println("Ingrese su contraseña ");
        String pass = scanner.nextLine();
        ingreso ing = new ingreso();
        ing.setUsuario(nombre);
        ing.setPass(pass);
        System.out.println(ing.Validar());
        
        /* if(!"Vero".equals(nombre)){
            System.out.println("El usuario es incorrecto");
        }else{
           System.out.println("Bienvenid@ " + nombre); 
        }
        
    }*/
    
}
