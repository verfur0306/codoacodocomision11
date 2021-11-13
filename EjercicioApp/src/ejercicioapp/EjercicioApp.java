
package ejercicioapp;

import java.util.Scanner;


public class EjercicioApp {

   
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.println("Ingrese su nombre: ");
        var nombre = scanner.nextLine();
        System.out.println("Ingrese su apellido: ");
        var apellido = scanner.nextLine();
        System.out.println("Ingrese su edad: ");
        var edad = scanner.nextLine();
        System.out.println("Ingrese su hobbie: ");
        var hobbie = scanner.nextLine();
        System.out.println("Ingrese su editor de código favorito: ");
        var editor = scanner.nextLine();
        System.out.println("Ingrese su sistema operativo: ");
        var so = scanner.nextLine();
        
        System.out.println(nombre + " " + apellido + " tiene " + edad + " años y su hobbie es " + hobbie + 
                ", su editor de código favorito es " + editor + " y su sistema operativo es " + so);
    } 
    
}
