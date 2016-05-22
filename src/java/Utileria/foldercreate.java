/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Utileria;

import java.io.*;

/**
 *
 * @author Sandy
 */
public class foldercreate {

    public void crearfolder() {
    
        try {
            String usuario = null;
            String strDirectoy = "D:\\Proyectos\\PAPW\\SingPanda\\Musica\\";
            String pathFinal = strDirectoy.concat(usuario);
            // Create one directory
            boolean success = (new File(strDirectoy)).mkdir();
            if (success) {
                System.out.println("Directory: " + pathFinal + " created");
            }
        } catch (Exception e) {//Catch exception if any
            System.err.println("Error: " + e.getMessage());
        }
    }
}
