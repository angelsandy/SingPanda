<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel = "stylesheet" type ="text/css" href="Login/CSS/LogInStyle.css">
        <link rel="stylesheet" type="text/css" href="Logo/plantilla.css">
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
        
        <title>
            Joy Music
        </title>
        <link rel="icon" type="image/ico" href="Logo/favicon.ico">
    </head>
    <body>
        <script src="/Funcionality/Validaciones.js"></script>
<h2 style='text-align: center; margin-top:0'>Njoy Login</h2><hr/><form action='InicioSesion'
name='formulario_registro'  method='post'><div><table><tr><td><input type='text' name='txtusuario' maxlength='30'
placeholder='Usuario' onfocus='focusear(this)'/></td></tr><tr><td> <input type='password' name='txtclave'  maxlength='30'onfocus='focusear(this)'
placeholder = '*****'/></td></tr></table><input type='checkbox' name='terminos' id='terminos' value='true'style='margin-bottom:0px;' />

<label for='terminos'style='margin:10px 0; font-size:15px;'>Keep me log in</label></div><input type = 'submit' value='Log Me' onclick='return validar()' id ='envio' class='button1'/></form>";
                                      <%if (request.getAttribute("error") != null) {%>
                            ${error}
                            <%}%>
<script type="text/javascript" src="${pageContext.request.contextPath}/Funcionality/Validaciones.js"></script>
                    </body>
                    </html>