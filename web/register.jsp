<DOCTYPE html>
<html>
<meta charset="ISO-8859-1"> 
<head>
<title>SingPanda-Join</title> 
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/Style/PaginaRegistroIU.css"/>
</head>   
<body>
    <header>
<img src ="${pageContext.request.contextPath}/Extras/Imagenes/pandalogp.png" alt ="" height="100%" width="10%" style= "margin-top:0%; "/>
</header>
<section><div><div><h1>MUSIC YOU LIKE, MUSIC YOU HAVE</h1></div><div><h3>JUST SIGN IN IT'S 100% FREE.</h3></div>
<div class="container-FormRegistro">
<form  name='formulario_registro'  method='post' action= ''><div><table><tr><td><input type='text' name='txtusuario' id= 'txtuser' maxlength='30'
placeholder='Usuario' onfocus='focusear(this)' /></td></tr><tr><td> <input type='password' name='txtclave'
maxlength='30'onfocus='focusear(this)' placeholder = '*****'/></td></tr><tr><td> <input type='password' name='txtclave'
id='pass'  maxlength='30'onfocus='focusear(this)' placeholder = '*****'/></td></tr><tr><td> <input type='email' name='correo'
maxlength='30'onfocus='focusear(this)' placeholder = 'Email'/></td></tr><tr><td> <input type='text' name='telefono'  maxlength='30'onfocus='focusear(this)'
placeholder = 'Phone Number'/></td></tr><tr><td> <input type='text' name='domicilio' id='text'  maxlength='30'onfocus='focusear(this)' placeholder = 'Street'/>
</td></tr><tr><td> <input type='text' name='pais'  maxlength='30'onfocus='focusear(this)' placeholder = 'Country'/></td></tr><tr><td> <input type='radio'
name='sexo' id='hombre' value='Hombre' /><label for='hombre'>Male</label><input type='radio' name='sexo' id='mujer' value='Mujer' /><label for='mujer'>Female
</label></tr></table></div> <input type = "submit" onclick="return validar()" value="Sing Me" class="button1 buttonregistro"/></form>
</div></div></section>
<div class = "full-Page">
</div> 
<script type="text/javascript" src="${pageContext.request.contextPath}/Funcionality/Validaciones.js"></script>
</body>       
</html>
</DOCTYPE>