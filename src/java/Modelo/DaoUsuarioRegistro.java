/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import Utileria.Conexion;
import static com.sun.org.apache.xalan.internal.lib.ExsltDatetime.date;
import static com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type.Int;
import java.awt.image.BufferedImage;
import java.io.ByteArrayInputStream;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.sql.CallableStatement;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.text.SimpleDateFormat;
import javax.imageio.ImageIO;
import org.apache.tomcat.util.codec.binary.Base64;
import sun.misc.BASE64Decoder;

public class DaoUsuarioRegistro {

    private Conexion conn;
    private Connection conectionDB;
    private Statement st = null;
    private ResultSet rs = null;
    private CallableStatement cs = null;
    private int confirmacion;

    public DaoUsuarioRegistro() {
        super();
        this.st = null;
        this.rs = null;
        this.conn = new Conexion();
        confirmacion = 0;
    }

    public int insetarUsuario(ArrayList<String> Usuario) {
        try {
           byte[] data = Base64.decodeBase64(Usuario.get(0));
            java.sql.Date sqlDate = java.sql.Date.valueOf(Usuario.get(7));
            conectionDB = conn.conexion();
            cs = conectionDB.prepareCall("{call Usuario(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)}");
            cs.setInt(1, 0);
            cs.setString(2, Usuario.get(1));
            cs.setString(3, Usuario.get(2));
            cs.setString(4, Usuario.get(3));
            cs.setString(5, Usuario.get(4));
            cs.setString(6, Usuario.get(5));
            cs.setString(7, Usuario.get(6));
            cs.setDate(8, sqlDate);
            cs.setString(9, Usuario.get(14));
            cs.setString(10, Usuario.get(8));
            cs.setString(11, Usuario.get(9));
            cs.setString(12, Usuario.get(10));
          //  cs.setBlob(13,data);
            cs.setString(14, Usuario.get(15));
            cs.setString(15, Usuario.get(16));
            cs.setInt(16, Integer.parseInt(Usuario.get(12)));
            cs.setInt(17, Integer.parseInt(Usuario.get(13)));
            cs.setInt(18, Integer.parseInt(Usuario.get(11)));
            cs.registerOutParameter(19, java.sql.Types.INTEGER);
            cs.executeUpdate();
            confirmacion = cs.getInt(19);
            conn.CerrarConexion();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return confirmacion;
    }

    public static BufferedImage decodeToImage(String imageString) {

        BufferedImage image = null;
        byte[] imageByte;
        try {
            BASE64Decoder decoder = new BASE64Decoder();
            imageByte = decoder.decodeBuffer(imageString);
            ByteArrayInputStream bis = new ByteArrayInputStream(imageByte);
            image = ImageIO.read(bis);
            bis.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return image;
    }

}
