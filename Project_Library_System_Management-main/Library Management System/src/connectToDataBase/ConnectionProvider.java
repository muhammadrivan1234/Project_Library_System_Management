/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package connectToDataBase;
import java.sql.*;
/**
 *
 * @author avans
 */
public class ConnectionProvider {
   public static Connection getCon(){
       try{
           Class.forName("com.mysql.jdbc.Driver");
           Connection con = DriverManager.getConnection("jdbc:mysql://localhost/newlms", "root", "");
           return con;
       }
       catch(Exception e){
           System.out.println(e);
           return null;
       }
   } 
}
