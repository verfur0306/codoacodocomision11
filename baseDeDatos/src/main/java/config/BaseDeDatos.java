/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package config;

import java.sql.*;

public class BaseDeDatos {
    public String driver = "com.mysql.jdbc.Driver";
    public Connection getConection(){
        Connection conexion=null;
        try{
        conexion = DriverManager.getConnection("jdbc:mysql//localhost:3306/comision1109", "vero", "123456");
       }catch(SQLException e){
            System.out.println(e.toString());
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(BasedeDatos.cla ss.getName()).log(Level.SEVERE, null, ex);
        }
        return conexion;
    } 
    public static void main(String [] argms)throws SQLException{
        BasedeDatos con = new BasedeDatos();

        Connection  conexion =null;
        conexion = con.getConection();

        PreparedStatement ps;
        ResultSet rs;

        ps = conexion.prepareStatement("SELECT * FROM participantes");
        rs = ps.executeQuery();

        while(rs.next()){
            int id = rs.getInt("id");
            String nombres = rs.getString("nombres");
             String apellidos = rs.getString("apellidos");
             String email = rs.getString("email");
             String telefono = rs.getString("telefono");
            System.out.println("id: "+ id +" Nombres: "+ nombres +" Apellidos: "
                    +apellidos+ "Email: "+ email + "Telefono: "+telefono);
        }