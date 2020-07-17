/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package koneksi;

import java.sql.Connection;
import java.sql.DriverManager;
/**
 *
 * @author HP 14
 */
public class config {
  
    public static Connection conn;
    
    public static Connection Conn(){
        try{
            Class.forName("com.mysql.jdbc.Driver");
            conn=DriverManager.getConnection("jdbc:mysql://localhost/db_pulsa", "root","");
        }catch (Exception e) {
            System.out.println(e.getMessage());
            
        }
        return conn;
    }
public static void main(String args[]){
        System.out.println(config.Conn());
    }
}
