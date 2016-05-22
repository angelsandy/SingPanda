var elementosUsuario = document.getElementsByName("txtusuario");
var elementosPassword = document.getElementsByName("txtclave");
var elementosDomicilio = document.getElementsByName("txtusuario");
var elementosTelefono = document.getElementsByName("telefono");
var elementosPais = document.getElementsByName("pais");
var elementosCorreo = document.getElementsByName("correo");
var elementosradio = document.getElementsByName("sexo");

function validar()
{
    for (var i = 0; i <= 6; i++)
    {
        if (elementosUsuario[i].value == "")
        {
            elementosUsuario[i].placeholder = "Campo necesario";
            elementosUsuario[i].style.color = "#ff0000";
            elementosUsuario[i].style.animation = "blink 1s step-end infinite alternate ";
            elementosUsuario[i].style.WebkitAnimation = "blink 1s step-end infinite alternate ";
            return false;
        }
        if (elementosPassword[i].value == "") {
            elementosPassword[i].placeholder = "Campo necesario";
            elementosPassword[i].style.color = "#ff0000";
            elementosPassword[i].style.animation = "blink 1s step-end infinite alternate ";
            elementosPassword[i].style.WebkitAnimation = "blink 1s step-end infinite alternate ";
            return false;
        }
        if (elementosDomicilio[i].value == "") {
            elementosDomicilio[i].placeholder = "Campo necesario";
            elementosDomicilio[i].style.color = "#ff0000";
            elementosDomicilio[i].style.animation = "blink 1s step-end infinite alternate ";
            elementosDomicilio[i].style.WebkitAnimation = "blink 1s step-end infinite alternate ";
        }
        if (elementosTelefono[i].value == "") {
            elementosTelefono[i].placeholder = "Campo necesario";
            elementosTelefono[i].style.color = "#ff0000";
            elementosTelefono[i].style.animation = "blink 1s step-end infinite alternate ";
            elementosTelefono[i].style.WebkitAnimation = "blink 1s step-end infinite alternate ";
        }
        if (elementosPais[i].value == "") {
            elementosTelefono[i].placeholder = "Campo necesario";
            elementosTelefono[i].style.color = "#ff0000";
            elementosTefono[i].style.animation = "blink 1s step-end infinite alternate ";
            elementosTefono[i].style.WebkitAnimation = "blink 1s step-end infinite alternate ";
        }
        if (elementosCorreo[i].value == "") {
            elementosCorreo[i].placeholder = "Campo necesario";
            elementosnCorreo[i].style.color = "#ff0000";
            elementosCorreo[i].style.animation = "blink 1s step-end infinite alternate ";
            elementosCorreo[i].style.WebkitAnimation = "blink 1s step-end infinite alternate ";
        }
    }
    if (elementosradio[0].checked || elementosradio[1].checked)
    {
        return true;
    }

    if (!elementosradio[0].checked && !elementosradio[1].checked)
    {
        elementosradio[0].style.animation = "blink 1s step-end infinite alternate ";
        elementosradio[0].style.WebkitAnimation = "blink 1s step-end infinite alternate ";
        return false;
    }
}
function focusear(elemento)
{
    elemento.placeholder = "";
    elemento.style.color = "#FFFFFF";
    elemento.style.animation = null;
    true;
    for (var i = 0; i <= 2; i++)
    {
        elementosradio[i].style.animation = null;
        return true;
    }
}

