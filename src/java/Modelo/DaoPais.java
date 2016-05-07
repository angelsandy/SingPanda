/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import Utileria.Conexion;
import Utileria.Paises;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import Utileria.Paises;
import java.util.ArrayList;
import com.google.gson.Gson;
import static java.lang.System.out;
import java.sql.ResultSetMetaData;
/**
 *
 * @author Sandy
 */
public class DaoPais {
    private Conexion conn;
    private Connection conectionDB;
    private Statement st = null;
    private ResultSet rs = null;
    private JSONObject paisObject;
    private JSONArray  nombrePaisArray;
    private ArrayList Pais;
    private int numColumns;
    public DaoPais() {
        super();
        this.st = null;
        this.rs = null;
        this.conn = new Conexion();
        this.conectionDB = null;
        
    }
    
    public ArrayList <Paises> getPaises() {
        
        try {
            Pais = new ArrayList<Paises>();
            conectionDB = conn.conexion();
            st = conectionDB.createStatement();
            rs = st.executeQuery("Select * from Pais");
            while(rs.next()) {
              Paises pais = new Paises();
              pais.setIdPais(rs.getInt("idPais"));
              pais.setNombrePais(rs.getString("nombrePais"));
              Pais.add(pais);
            }
           
            conn.CerrarConexion();
        } catch (Exception e) {
        }

        return Pais;
    }
}
