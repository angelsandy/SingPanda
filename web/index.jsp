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
  <script>
    $(document).ready(function(){
     $("#search").click(function () {
        var buscarwidthfull = $("#form-search").width()== 500 ? '0px':'500';
        $("#form-search").animate({width:buscarwidthfull});
    });
        var heightpublicidad = $(document).height();
        var widthpublicidad = $(window).width();
        $("#contenedor-Publicidad").css({'width':widthpublicidad,'height':heightpublicidad});
        $("#contenedor-Publicidad").click(function(){
            $("#Publicidad").unwrap();
            $("#contenedor-Publicidad").remove();
          $("#Publicidad").fadeIn(9000); $("#Publicidad").css({'top':80+'%','position':'absolute','display':'inline-flex','left':85.6+'%','height':15+'%','width':14+'%'});
         
        });
       
    }); 
        function inicializarplayer(){
            var playerAudiofull = document.getElementById("player-AudioNovedades");
            var imagenfull = document.getElementById("image-playpusefull");
            var imagen = document.getElementsByClassName("image-playpause");
            var playerAudioUltimos = document.getElementById("player-AudioUltimos");
            var progressAudio = document.getElementById("progreso-Video");
            var seeking = false;
            var seekto;
            var volumeslider = document.getElementById("volumeslider");
            playerAudiofull.addEventListener("timeupdate", function(){ seektimeupdate(); });
            volumeslider.addEventListener("mousemove", setvolume);
            playerAudioUltimos.addEventListener("click",playpause); progressAudio.addEventListener("mousedown",function(event){seeking=true; seek(event);}); progressAudio.addEventListener("mouseup",function(event){seeking=false;}); progressAudio.addEventListener("mousemove",function(event){seek(event)});
            imagenfull.addEventListener("click", playpausefull);
            for (var i = 0; i < imagen.length; i++) {
            imagen[i].addEventListener('click', playpause);
             }
            function playpausefull(){
             if(playerAudiofull.paused){
            playerAudiofull.play();
            image.src = "http://localhost:8080/SingPanda/Extras/Imagenes/pandalogp.png";
        }else{
            playerAudiofull.pause();
            image.src = "${pageContext.request.contextPath}/Extras/Imagenes/play.png";
        }
        } 
         function playpause(){
             if(playerAudio.paused){
            playerAudio.play();
            image.src = "${pageContext.request.contextPath}/Extras/Imagenes/pause.png";
        }else{
            playerAudio.pause();
            image.src = "${pageContext.request.contextPath}/Extras/Imagenes/play.png";
        }
        } 
        function seek(event){
          if(seeking){
        progressAudio.value = event.clientX - progressAudio.offsetLeft;
        seekto = playerAudiofull.duration*(progressAudio.value/100);
        playerAudiofull.currentTime = seekto;
                }
            }
            
            function seektimeupdate(){
		var nt = playerAudiofull.currentTime * (100 / playerAudiofull.duration);
		progressAudio.value = nt;
		var curmins = Math.floor(playerAudio.currentTime / 60);
	    var cursecs = Math.floor(playerAudio.currentTime - curmins * 60);
	    var durmins = Math.floor(playerAudio.duration / 60);
	    var dursecs = Math.floor(playerAudio.duration - durmins * 60);
		if(cursecs < 10){ cursecs = "0"+cursecs; }
	    if(dursecs < 10){ dursecs = "0"+dursecs; }
	    if(curmins < 10){ curmins = "0"+curmins; }
	    if(durmins < 10){ durmins = "0"+durmins; }
		currentTime.innerHTML = curmins+":"+cursecs;
	    duration.innerHTML = durmins+":"+dursecs;
	}
       function setvolume(){
	    playerAudiofull.volume = volumeslider.value / 100;
    }     
        }
       
      window.addEventListener("load",inicializarplayer);
    </script>
</head>
<body>
    <header>
        <img src="${pageContext.request.contextPath}/Extras/Imagenes/Perfil2.png" alt="" height="40" width="40" id= "foto-Perfil"/>
       <a href="${pageContext.request.contextPath}/log.jsp" class ="button2 button-login">Log In</a>
        <a href="${pageContext.request.contextPath}/register.jsp" class ="button2 button-registro">Sing In</a>
        <img src ="${pageContext.request.contextPath}/Extras/Imagenes/pandalogp.png" alt ="" height="100%" width="5%" style= "margin-top:0%; margin-left:1%;"/>
        <a href="#home"><span><i class="icon-cart"></i></span></a>
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
    </div>
</body>    
</html>

