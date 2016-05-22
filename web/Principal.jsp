<%-- 
    Document   : Principal
    Created on : 9/05/2016, 06:20:29 PM
    Author     : Sandy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Principal</title>
        <link rel="icon" type="image/ico" href="../Log in/favicon.ico">
        <link rel="stylesheet" type="text/css" href="Extras/style.css"/>
        <link rel="stylesheet" type="text/css" href="Style/PaginaPrincipalU.css"/>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
        <script>
            $(document).ready(function () {
            
            });
        </script>
    </head>
    <body>
            <img src ="${pageContext.request.contextPath}/Extras/Imagenes/pandalogp.png" alt ="" height="10%" width="5%" style= "margin-top:0%; margin-left:0%;"/>
        <h1 style="top:20%; left:40%;">
            Inserte Publicidad Aqui
        </h1>
        
        <div class= "SubirVideo">
            <video id = "player-AudioNovedades" src="" controls = "true"></video>
            </div>
    </body>    
</html>