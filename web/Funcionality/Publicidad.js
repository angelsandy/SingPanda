$(document).ready(function ( ) {
    $("#video-publicidad").mouseenter(function () {
        if ($("#video-publicidad").get(0).paused == true) {
            var ancho = $("#video-publicidad").width();
            ancho *= 1.2;
            var texto = (ancho).toString();
            texto += "px";
            $("#video-publicidad").css("width", texto);
        }
    });

    $("#video-publicidad").mouseleave(function () {
        if ($("#video-publicidad").get(0).paused == true) {
            var ancho = $("#video-publicidad").width();
            ancho /= 1.2;
            var texto = (ancho).toString();
            texto += "px";
            $("#video-publicidad").css("width", texto);
        }
    });

    $("#video-publicidad").click(function () {

        $(this).get(0).paused ? reproducir() : $(this).get(0).pause();
        $(this).css("box-shadow", "100px 40px 100px 400px rgba(0, 0, 0, 0.5)");
    });

    function reproducir() {
        $("#video-publicidad").css("position", "absolute")
        $("#video-publicidad").animate({"width": "900px",
            "top": "150",
            "left": "250",
            "z-index": "400"});
        $("#video-publicidad").get(0).play();
    }
    ;

    function pausar() {

    }
    ;
});