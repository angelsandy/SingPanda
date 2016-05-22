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
        <div class= "contenedor-Novedad">
            <video id = "player-AudioNovedades" src="${pageContext.request.contextPath}/Extras/Musica/Cuando%20Pienso%20En%20Ti%20%20%20Jose%20Feliciano%20www.dilandau.eu.mp3"></video>
            <div id="player-Bar">
                <img src="${pageContext.request.contextPath}/Extras/Imagenes/play.png" id="image-playpusefull"/>
                <input id="progreso-Video" type="range" min="0" max="100" value="0" step="1"/>
                <span id="currentTime">00:00</span>
                <input id="volumeslider" type="range" min="0" max="100" value="100" step="1"/>
            </div>
        </div>
        <div id ="contenedor-Publicidad">
            <div id = "Publicidad">
                <video src="video.ogg" autoplay controls loop= "true" style="width:100%; height:100%;" type="video/ogg"></video>
            </div>
        </div>
        <h1>Ultimos</h1>
        <div class="contenedor-Ultimos">
            <div class="Musiccard">
                <audio id = "player-AudioUltimos" src="${pageContext.request.contextPath}/Extras/Musica/Cuando%20Pienso%20En%20Ti%20%20%20Jose%20Feliciano%20www.dilandau.eu.mp3" controls  ></audio>
                <img src="${pageContext.request.contextPath}/Extras/Imagenes/play.png" id="image-playpause"/>    
                <img src="${pageContext.request.contextPath}/Extras/Imagenes/play.png" class="poster"/> 
            </div>
            <div class="Musiccard">
                <audio id = "player-AudioUltimos" src="${pageContext.request.contextPath}/Musica/Cuando%20Pienso%20En%20Ti%20%20%20Jose%20Feliciano%20www.dilandau.eu.mp3" controls ></audio>
                <img src="${pageContext.request.contextPath}/Extras/Imagenes/play.png" class="poster"/>
                <img src="${pageContext.request.contextPath}/Extras/Imagenes/play.png" id="image-playpause"/>      
            </div>
        </div>
        <h1>Novedades Gratuitas</h1>
        <div class="contenedor-Gratis">
            <div class="Musiccard">
                <audio id = "player-AudioUltimos" src="${pageContext.request.contextPath}/Extras/Musica/Cuando%20Pienso%20En%20Ti%20%20%20Jose%20Feliciano%20www.dilandau.eu.mp3" controls  ></audio>
                <img src="${pageContext.request.contextPath}/Extras/Imagenes/play.png" id="image-playpause"/>    
                <img src="${pageContext.request.contextPath}/Extras/Imagenes/play.png" class="poster"/> 
            </div>
            <div class="Musiccard">
                <audio id = "player-AudioUltimos" src="${pageContext.request.contextPath}/Extras/Musica/Cuando%20Pienso%20En%20Ti%20%20%20Jose%20Feliciano%20www.dilandau.eu.mp3" controls ></audio>
                <img src="${pageContext.request.contextPath}/Extras/Imagenes/play.png" class="poster"/>
                <img src="${pageContext.request.contextPath}/Extras/Imagenes/play.png" id="image-playpause"/>      
            </div>
              <div id="ex1" style="display:none;">
  <p>Thanks for clicking.  That felt good.  <a href="#" rel="modal:close">Close</a> or press ESC</p>
  </div>

  <!-- Link to open the modal -->
  <p><a href="#ex1" rel="modal:open">Open Modal</a></p>
        </div>
        <%if (request.getAttribute("Confirmacion") != null) {%>
        ${Confirmacion}
        <%}%>

    </body>    
</html>

