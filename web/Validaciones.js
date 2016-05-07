var elementos = document.getElementsByName("user");
var elementosradio = document.getElementsByName("sexo");
var ok = 0;
function validar()
{
   for(var i = 0;i<=6;i++)
   {
   if (elementos[i].value == "")
    {
          elementos[i].placeholder = "Campo necesario";
          elementos[i].style.color = "#ff0000";
          elementos[i].style.animation = "blink 1s step-end infinite alternate ";
          elementos[i].style.WebkitAnimation = "blink 1s step-end infinite alternate ";
          return false;
   }
   }
  if(elementosradio[0].checked  || elementosradio[1].checked )
   {
    return true;
   } 
   
   if(!elementosradio[0].checked && !elementosradio[1].checked)
   {
	elementosradio[0].style.animation = "blink 1s step-end infinite alternate ";
    elementosradio[0].style.WebkitAnimation = "blink 1s step-end infinite alternate ";
	   return false;}
}
function focusear()
{
    for(var i = 0;i<=6;i++)
	{
    elementos[i].placeholder = "";
    elementos[i].style.color = "#000000";
    elementos[i].style.animation = null;
	return true;
	}
	 for(var i = 0;i<= 2;i++)
	{
	elementosradio[i].style.animation = null;
	return true;
	}
}
  
