/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Utileria;

import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.JSONValue;


public class Paises {
    private int idPais;
    private String nombrePais ;
public Paises (){

}

    public int getIdPais() {
        return idPais;
    }

    public String getNombrePais() {
        return nombrePais;
    }

    public void setIdPais(int idPais) {
        this.idPais = idPais;
    }

    public void setNombrePais(String nombrePais) {
        this.nombrePais = nombrePais;
    }

}
