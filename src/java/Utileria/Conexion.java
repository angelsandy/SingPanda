/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Utileria;
 
 
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.SQLException;

public class Conexion{
    private Connection connection;
 
public Conexion(){
    this.connection = null;
}    
    
public Connection conexion() throws SQLException{
 try{
Context initial = new InitialContext();
Context context = (Context) initial.lookup("java:comp/env");
DataSource ds = (DataSource) context.lookup("connpool");
connection = ds.getConnection();

} catch (NamingException e) {
    // Handle the error
    System.err.println(e);
}
 return connection;
}
public Connection CerrarConexion(){
    connection = null;
    return connection;
}
}
