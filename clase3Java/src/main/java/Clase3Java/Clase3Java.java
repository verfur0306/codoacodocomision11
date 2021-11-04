
package Clase3Java;

import Personal.Departamento;
import Personal.Personal;


public class Clase3Java {
    public static void main(String[] args){
        Personal persona = new Personal("Vero", "Furlan", 32);
        persona.setSueldo(250000);
        Personal administrativo = new Personal("Juan", "Perez", 45);
        administrativo.setSueldo(80000);
        Personal mantenimiento = new Personal ("Diana", "Funes", 22)
        mantenimiento.setSueldo(60000);
         System.out.println("El sueldo para el personal administrativo es " + administrativo.getSueldo());    
         System.out.println("El sueldo para el personal de mantenimiento es " + mantenimiento.getSueldo());
         Departamento it = new Departamento("Luis", "Navas", 42, "it");
         it.setSueldo(500000);
         System.out.println("El sueldo de programador es " + it.getSueldo());
         it.depto="Gerencia General";
         System.out.println(it.MostrarDatos());
    }
}
