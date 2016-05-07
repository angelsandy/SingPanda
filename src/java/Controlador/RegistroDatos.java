/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

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
import Utileria.Paises;
import com.google.gson.Gson;
import com.google.gson.JsonElement;
import com.google.gson.JsonArray;
import com.google.gson.reflect.TypeToken;
import static java.lang.System.out;
import java.util.ArrayList;
import java.util.List;
/**
 *
 * @author Sandy
 */
@WebServlet(name = "RegistroDatos", urlPatterns = {"/RegistroDatos"})
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
        DaoPais paises = new DaoPais();
         ArrayList<Paises> Pais = new ArrayList<Paises>();
         Pais = paises.getPaises();
         Gson n = new Gson();
         String respuesta = n.toJson(Pais);
         response.setContentType("application/json");
         response.setCharacterEncoding("UTF-8");
         response.getWriter().write(respuesta);
        
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
         String Usuario = request.getParameter("txtusuario");
        String Contraseña = request.getParameter("txtclave");
        String Email = request.getParameter("txtclaverepetida");
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }
}
