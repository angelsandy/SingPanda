$(document).ready(function () {
    $("#search").click(function () {
        var buscarwidthfull = $("#form-search").width() == 500 ? '0px' : '500';
        $("#form-search").animate({width: buscarwidthfull});
    });
    var heightpublicidad = $(document).height();
    var widthpublicidad = $(window).width();
    $("#contenedor-Publicidad").css({'width': widthpublicidad, 'height': heightpublicidad});
    $("#contenedor-Publicidad").click(function () {
        $("#Publicidad").unwrap();
        $("#contenedor-Publicidad").remove();
        $("#Publicidad").fadeIn(9000);
        $("#Publicidad").css({'top': 80 + '%', 'position': 'absolute', 'display': 'inline-flex', 'left': 85.6 + '%', 'height': 15 + '%', 'width': 14 + '%'});
    });
    $("#boton").click(function () {
        if ($("#numero").css("display") == "none") {
            $("#numero").css("display", "inline");
        } else {
            var valor = Number($("#numero").text());
            valor += 1;
            $("#numero").html(valor);
        }
    });
});
function inicializarplayer() {
    var playerAudiofull = document.getElementById("player-AudioNovedades");
    var imagenfull = document.getElementById("image-playpusefull");
    var imagen = document.getElementsByClassName("image-playpause");
    var playerAudioUltimos = document.getElementById("player-AudioUltimos");
    var progressAudio = document.getElementById("progreso-Video");
    var seeking = false;
    var seekto;
    var volumeslider = document.getElementById("volumeslider");
    playerAudiofull.addEventListener("timeupdate", function () {
        seektimeupdate();
    });
    volumeslider.addEventListener("mousemove", setvolume);
    playerAudioUltimos.addEventListener("click", playpause);
    progressAudio.addEventListener("mousedown", function (event) {
        seeking = true;
        seek(event);
    });
    progressAudio.addEventListener("mouseup", function (event) {
        seeking = false;
    });
    progressAudio.addEventListener("mousemove", function (event) {
        seek(event)
    });
    imagenfull.addEventListener("click", playpausefull);
    for (var i = 0; i < imagen.length; i++) {
        imagen[i].addEventListener('click', playpause);
    }
    function playpausefull() {
        if (playerAudiofull.paused) {
            playerAudiofull.play();
            image.src = "http://localhost:8080/SingPanda/Extras/Imagenes/pandalogp.png";
        } else {
            playerAudiofull.pause();
            image.src = "${pageContext.request.contextPath}/Extras/Imagenes/play.png";
        }
    }
    function playpause() {
        if (playerAudio.paused) {
            playerAudio.play();
            image.src = "${pageContext.request.contextPath}/Extras/Imagenes/pause.png";
        } else {
            playerAudio.pause();
            image.src = "${pageContext.request.contextPath}/Extras/Imagenes/play.png";
        }
    }
    function seek(event) {
        if (seeking) {
            progressAudio.value = event.clientX - progressAudio.offsetLeft;
            seekto = playerAudiofull.duration * (progressAudio.value / 100);
            playerAudiofull.currentTime = seekto;
        }
    }

    function seektimeupdate() {
        var nt = playerAudiofull.currentTime * (100 / playerAudiofull.duration);
        progressAudio.value = nt;
        var curmins = Math.floor(playerAudio.currentTime / 60);
        var cursecs = Math.floor(playerAudio.currentTime - curmins * 60);
        var durmins = Math.floor(playerAudio.duration / 60);
        var dursecs = Math.floor(playerAudio.duration - durmins * 60);
        if (cursecs < 10) {
            cursecs = "0" + cursecs;
        }
        if (dursecs < 10) {
            dursecs = "0" + dursecs;
        }
        if (curmins < 10) {
            curmins = "0" + curmins;
        }
        if (durmins < 10) {
            durmins = "0" + durmins;
        }
        currentTime.innerHTML = curmins + ":" + cursecs;
        duration.innerHTML = durmins + ":" + dursecs;
    }
    function setvolume() {
        playerAudiofull.volume = volumeslider.value / 100;
    }
}

window.addEventListener("load", inicializarplayer);