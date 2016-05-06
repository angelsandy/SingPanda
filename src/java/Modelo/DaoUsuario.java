/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;
import Utileria.Conexion;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 *
 * @author Sandy
 */
public class DaoUsuario {
    
    private Conexion conn = new Conexion();
    private Connection conectionDB = null;
    private Statement st = null;
    private ResultSet rs = null;

    public DaoUsuario() {
        super();
    }
    
    public int validar(String nom, String clave, String puesto) {
        int encontrado = 0;

        try {
            conectionDB = conn.conexion();
            st = conectionDB.createStatement();
            rs = st.executeQuery("Select * from usuario where Username ='" + nom + "' and contraseñaUsuario='" + clave + "' AND puestoUsuario='" + puesto + "';");
            if (rs.next()) {
                encontrado = 1;
            }
            if(nom == ""){
                encontrado = 2;
            }
            conn.CerrarConexion();
        } catch (Exception e) {
        }

        return encontrado;
    }

    public int validar2(String nom, String clave, String puesto) {
       int encontrado = 0;
        try {
            conectionDB = conn.conexion();
            st = conectionDB.createStatement();
            rs = st.executeQuery("Select * from usuario where Username ='" + nom + "' and contraseñaUsuario='" + clave + "' AND puestoUsuario='" + puesto + "';");
            if (rs.next()) {
                encontrado =1;
            }
            if(nom == ""){
                encontrado =2;
            }
            conn.CerrarConexion();
        } catch (Exception e) {
        }
        return encontrado;
    }
}
