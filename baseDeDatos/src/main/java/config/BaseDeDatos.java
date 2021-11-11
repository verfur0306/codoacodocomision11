/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package config;

import java.sql.*;

/**
 *
 * @author veron
 */
public class BaseDeDatos {
    public String driver = "com.mysql.jdbc.Driver";
    public Connection getConection(){
        Connection conexion=null;
        try{
        conexion = DriverManager.getConnection("jdbc:mysql//localhost:3306/comision1109");
       }catch(SQLException e ){
            System.out.println(e.toString());
        }
        return conexion;
    }
    public static void main(String [] argms){
        System.out.println("hello");
    }
}
