<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Principal</title>
        <link rel="icon" type="image/ico" href="../Log in/favicon.ico">
        <link rel="stylesheet" type="text/css" href="Extras/style.css"/>
        <link rel="stylesheet" type="text/css" href="Style/PaginaPrincipalU.css"/>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
        <script src = "${pageContext.request.contextPath}/Funcionality/PaginaPrincipal.js"></script>
        <script src="jquery.modal.js" type="text/javascript" charset="utf-8"></script>
        <script>
            $(document).ready(function () {
                $.get('RegistroDatos', function (respuesta) {
                    var select = $('#player');
                    $.each(respuesta, function (i, data) {
                        $('<option>').val(data.idPais).text(data.nombrePais).appendTo(select);
                    });
                });
            });
        </script>
    </head>
    <body>
        <header>
            <img src="${pageContext.request.contextPath}/Extras/Imagenes/Perfil2.png" alt="" height="40" width="40" id= "foto-Perfil"/>
            <a href="${pageContext.request.contextPath}/log.jsp" class ="button2 button-login">Log In</a>
            <a href="${pageContext.request.contextPath}/register.jsp" class ="button2 button-registro">Sing In</a>
            <img src ="${pageContext.request.contextPath}/Extras/Imagenes/pandalogp.png" alt ="" height="100%" width="5%" style= "margin-top:0%; margin-left:1%;"/>
            <a href="#home"><span><i class="icon-cart"><span id="numero" class="badge shoppingBadge-custom">0</span></i></span></a>
            <div id= "container-search">
                <button id="search" value="" />
                <span class= "icon-search"></span>
            </div>
            <form action="" method= "get" id="form-search" style="width:500px">
                <input type="search" id="buscar" name="search" placeholder="Search..." />
                <input type="submit" style="position: absolute;  width: 1px; height: 1px;" tabindex="-1" />  
            </form>
        </header> 
        <ul>
            <li><a href="#home"><span class="inicio"><i class="icon icon-home"></i></span></a>
            </li>
            <li><a href="#"><span class="perfil"><i class="icon icon-profile"></i></span></a>
            </li>
            <li><a href="#"><span class="amigos"><i class="icon icon-users"></i></span></a>
            </li>
            <li><a href="#"><span class="listaReproduccion"><i class="icon icon-headphones"></i></span></a>
            </li>
        </ul>
        <div class= "contenedor-Reportes">
            <ul>
                <li>Coffee</li>
                <li>Tea</li>
                <li>Milk</li>
            </ul> 
        </div>
        <div id ="contenedor-Publicidad">
            <div id = "Publicidad">
                <video src="video.ogg" autoplay controls loop= "true" style="width:100%; height:100%;" type="video/ogg"></video>
            </div>
        </div>
        <%if (request.getAttribute("Confirmacion") != null) {%>
        ${Confirmacion}
        <%}%>

    </body>    
</html>

