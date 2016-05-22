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
import java.util.ArrayList;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import Utileria.Ciudad;

public class DaoCiudad {

    private final Conexion conn;
    private Connection conectionDB;
    private Statement st = null;
    private ResultSet rs = null;
    private JSONObject ciudadObjecto;
    private JSONArray nombreCiudadArray;
    private ArrayList Ciudad;
    private int idPaisEstado;

    public DaoCiudad(int idPaisEstado) {
        super();
        this.st = null;
        this.rs = null;
        this.conn = new Conexion();
        this.conectionDB = null;
        this.idPaisEstado = idPaisEstado;
    }

    public ArrayList<Ciudad> getCiudades() {
        try {
            Ciudad = new ArrayList<Ciudad>();
            conectionDB = conn.conexion();
            st = conectionDB.createStatement();
            rs = st.executeQuery("Select * from Estado where idPaisEstado = '"+idPaisEstado+"'");
            while(rs.next()) {
              Ciudad ciudad = new Ciudad();
              ciudad.setIdCiudad(rs.getInt("idEstado"));
              ciudad.setNombreCiudad(rs.getString("nombreEstado"));
              ciudad.setIdPaisEstado(rs.getInt("idPaisEstado"));
              Ciudad.add(ciudad);
            }
           
         conn.CerrarConexion();
        }catch(Exception e){
            
        }
        return Ciudad;
    }
}
