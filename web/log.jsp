<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel = "stylesheet" type ="text/css" href="Login/CSS/LogInStyle.css">
        <link rel="stylesheet" type="text/css" href="Logo/plantilla.css">
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
        <script src="${pageContext.request.contextPath}/Funcionality/jquery-1.11.1.js" type="text/javascript"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
        <script src="http://code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
        <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
        //<script src="${pageContext.request.contextPath}/Funcionality/imagen.js"></script>
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/Style/PaginaRegistroIU.css"/>
        <title>
            Joy Music
        </title>
        <link rel="icon" type="image/ico" href="Logo/favicon.ico">
    </head>
    <body>
        <header>
            <img src ="${pageContext.request.contextPath}/Extras/Imagenes/pandalogp.png" alt ="" height="100%" width="10%" style= "margin-top:0%; "/>
        </header>
        <section><div><div><h1>MUSIC YOU LIKE, MUSIC YOU HAVE</h1></div><div><h3>JUST SIGN IN IT'S 100% FREE.</h3></div>
                <div class="container-FormRegistro">
                    <form  name='formulario_registro'  method='post' action='' enctype='multipart/form-data' onsubmit="return false;"><div>
                            <table>
                                <tr>
                                    <td> 
                                        <input type='text' name='txtusuario' id='txtuser' maxlength='30' placeholder='Usuario' onfocus='focusear(this)' />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <input type='password' name='txtclave' id='txtclave' maxlength='30'onfocus='focusear(this)' placeholder = '*****'/>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <input type = "submit" id="enviar" value="Sing Me"  onclick='validar()' class="button1 buttonregistro"/>
                                    </td>
                                </tr>
                            </table> 
                        </div> 
                    </form>
                </div>
            </div>
        </section>
        <div class = "full-Page">
        </div> 
        <%if (request.getAttribute("Confirmacion") != null) {%>
        ${error}
        <%}%>
        <script type="text/javascript" src="${pageContext.request.contextPath}/Funcionality/Validaciones.js">
        </script>
    </body>
</html>