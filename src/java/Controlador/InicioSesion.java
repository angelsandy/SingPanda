/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Controlador;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Modelo.DaoUsuario;

/**
 *
 * @author Sandy
 */
@WebServlet(name = "InicioSesion", urlPatterns = {"/InicioSesion"})
public class InicioSesion extends HttpServlet {

protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String usuario = request.getParameter("txtusuario");
        String clave = request.getParameter("txtclave");
        DaoUsuario user = new DaoUsuario();
        DaoUsuario user2 = new DaoUsuario();
        if (user.validar(usuario, clave, "Administrador") == 1) {
            request.getRequestDispatcher("log.jsp").forward(request, response);
        } else if (user2.validar2(usuario, clave, "Usuario") == 1) {
            request.getRequestDispatcher("index.jsp").include(request, response);
        } else if(user2.validar2(usuario, clave, "Usuario") == 0 ) {
            request.setAttribute("error", "<script>alert('USUARIO o CONTRASENA INCORRECTA')</script>");
            request.getRequestDispatcher("log.jsp").forward(request, response);
        }
        else if(user2.validar2(usuario, clave, "Usuario") == 2 ) {
            request.getRequestDispatcher("log.jsp").forward(request, response);
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }
}
