/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Controlador;

import Modelo.DaoCiudad;
import static com.sun.corba.se.spi.presentation.rmi.StubAdapter.request;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.json.simple.JSONObject;
import Modelo.DaoPais;
import Modelo.DaoUsuarioRegistro;
import Utileria.Ciudad;
import Utileria.Paises;
import com.google.gson.Gson;
import com.google.gson.JsonElement;
import com.google.gson.JsonArray;
import com.google.gson.reflect.TypeToken;
import static java.lang.System.out;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;
import javax.servlet.annotation.MultipartConfig;
/**
 *
 * @author Sandy
 */
@WebServlet(name = "RegistroDatos", urlPatterns = {"/RegistroDatos"})
@MultipartConfig
public class RegistroDatos extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        String ciudad = request.getParameter("idPaisEstado");
        if(ciudad!= null){
            int idCiudad = Integer.parseInt(ciudad);
            DaoCiudad cuidades = new DaoCiudad(idCiudad);
            ArrayList<Ciudad> Ciudad = new ArrayList<Ciudad>();
            Ciudad = cuidades.getCiudades();
            Gson n = new Gson();
            String respuesta = n.toJson(Ciudad);
            response.setContentType("application/json");
            response.setCharacterEncoding("UTF-8");
            response.getWriter().write(respuesta);
        }
       else{
            DaoPais paises = new DaoPais();
            ArrayList<Paises> Pais = new ArrayList<Paises>();
            Pais = paises.getPaises();
            Gson n = new Gson();
            String respuesta = n.toJson(Pais);
            response.setContentType("application/json");
            response.setCharacterEncoding("UTF-8");
            response.getWriter().write(respuesta);
         }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        DaoUsuarioRegistro registroU = new DaoUsuarioRegistro();
        ArrayList <String> registro = new ArrayList<String>();
        Enumeration enRegistro = request.getParameterNames();
       
        while(enRegistro.hasMoreElements()){
        String objRegistro = (String) enRegistro.nextElement();
        String[] valor = request.getParameterValues(objRegistro);
         for (int i = 0; i < valor.length; i++) {
             registro.add (valor[i]);
         }
         }
       
        int confirmacion = registroU.insetarUsuario(registro);
        PrintWriter out = response.getWriter();
        response.setContentType("text/html;charset=UTF-8");
        if(confirmacion != 0){
        request.setAttribute("Confirmacion", "<script>alert('Ya quedo')</script>");
        request.getRequestDispatcher("index.jsp").forward(request, response);}
        else{
            request.setAttribute("Confirmacion", "<script>alert('Error')</script>");
            request.getRequestDispatcher("register.jsp").forward(request, response);
        }
        }
    
        //onclick="return validar()"

    @Override
    public String getServletInfo() {
        return "Short description";
    }
}
