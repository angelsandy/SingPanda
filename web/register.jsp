<DOCTYPE html>
    <html>
        <meta charset="ISO-8859-1"> 
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <head>
            <title>SingPanda-Join</title> 
            <script src="${pageContext.request.contextPath}/Funcionality/jquery-1.11.1.js" type="text/javascript"></script>
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
            <script src="http://code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
            <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
            //<script src="${pageContext.request.contextPath}/Funcionality/imagen.js"></script>
            <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/Style/PaginaRegistroIU.css"/>
            <script>
                $(document).ready(function () {
                    $('#enviar').click(function () {
                       var formData = new FormData();
                        var rfc = $("#rfc").val();
                        formData.append('imgperfil', base64Imageperfil);
                        formData.append('rfc', rfc);
                        formData.append('curp', $("#curp").val());
                        formData.append('txtusuario', $("#txtuser").val());
                        formData.append('nombreUsuario', $("#usuario").val());
                        formData.append('correo', $("#correo").val());
                        formData.append('txtclave', $("#txtclave").val());
                        formData.append('bday', $("#nacimiento").val());
                        formData.append('domicilio', $("#domicilio").val());
                        formData.append('colonia', $("input[name='colonia']").val());
                        formData.append('codigopostal', $("input[name='codigopostal']").val());
                        formData.append('telefono', $("input[name='telefono']").val());
                        formData.append('EstadoS', $("select[name='EstadoS']").val());
                        formData.append('PaisS', $("select[name='PaisS']").val());
                        formData.append('sexo', $("input[name='sexo']").val());
                        formData.append('banner', base64Imagebanner);
                        formData.append('Perfil', $("select[name='Perfil']").val());
                        $.ajax({
                            url: 'RegistroDatos',
                            type: 'POST',
                            data: formData,
                            contentType: false,
                            cache: false,
                            processData: false,
                                    success: function (response, textStatus, jqXHR) {
                                        console.log(formData.get('curp'));
                                    },
                            error: function (jqXHR, textStatus, errorThrown) {
                                alert(textStatus, errorThrown);
                            }
                        });
                    });
                    var base64Imageperfil;
                    var base64Imagebanner;
                    $.get('RegistroDatos', function (respuesta) {
                        var select = $('#player');
                        $.each(respuesta, function (i, data) {
                            $('<option>').val(data.idPais).text(data.nombrePais).appendTo(select);
                        });
                    });
                    $('#imgperfil').change(function (e) {
                        var files = $(this)[0].files;
                        var file = this.files[0];
                        var reader = new FileReader();
                        reader.onloadend = function () {
                            base64Imageperfil = reader.result;
                            base64Imageperfil = base64Imageperfil.substring(21);
                            console.log(base64Imageperfil);
                        }
                        reader.readAsDataURL(file);
                    });
                    $('#bann').change(function (e) {
                        var files = $(this)[0].files;
                        var file = this.files[0];
                        var reader = new FileReader();
                        reader.onloadend = function () {
                            base64Imagebanner = reader.result;
                            base64Imagebanner = base64Imagebanner.substring(21);
                            console.log(base64Imagebanner);
                        }
                        reader.readAsDataURL(file);
                    });
                    $('#player').change(function (event) {
                        var Estado = $("select#player").val();
                        $.get('RegistroDatos', {
                            idPaisEstado: Estado
                        }, function (response) {
                            var selectEstado = $('#Estado');
                            selectEstado.find('option').remove();
                            $.each(response, function (index, value) {
                                $('<option>').val(value.idCiudad).text(value.nombreCiudad).appendTo(selectEstado);
                            });
                        });
                    });

                    $('#nacimiento').datepicker({dateFormat: "yy-mm-dd"});
                });
            </script>
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
                                            <img src="${pageContext.request.contextPath}/Extras/Imagenes/blank-avatar.jpg" id='imagenP' style='margin-left: 70%;border-radius:5px;'/>
                                            <br/>
                                            <input type='file' style='display:none' name='imgperfil' id='imgperfil'/>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td> 
                                            <input type='text' name='rfc' id='rfc' maxlength='13' onfocus='focusear(this)' placeholder= ' RFC' />
                                        </td>
                                        <td> 
                                            <input type='text' name='curp' id='curp' maxlength='20' onfocus='focusear(this)' placeholder= ' CURP' />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td> 
                                            <input type='text' name='txtusuario' id='txtuser' maxlength='30' placeholder='Usuario' onfocus='focusear(this)' />
                                        </td>
                                        <td>
                                            <input type='text' name='nombreUsuario' id='usuario'  maxlength='30'onfocus='focusear(this)' placeholder = 'Fransisco Perez'/>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td> 
                                            <input type='email' name='correo' id='correo' maxlength='30'onfocus='focusear(this)' placeholder = 'Email'/>
                                        </td>
                                        <td> 
                                            <input type='password' name='txtclave' id='txtclave' maxlength='30'onfocus='focusear(this)' placeholder = '*****'/>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <input type="text" id="nacimiento" name ="bday" onfocus='focusear(this)' placeholder = '31/12/2015'/>
                                        </td>
                                        <td>
                                            <input type='text' name='domicilio' id='domicilio'  maxlength='30'onfocus='focusear(this)' placeholder = 'Street'/>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td> 
                                            <input type='text' name='colonia' id='colonia'  maxlength='30'onfocus='focusear(this)' placeholder = 'Avenue'/>  
                                        </td>
                                        <td> 
                                            <input type='text' name='codigopostal' maxlength='6' onfocus='focusear(this)' placeholder= 'C.P.' />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <input type='text' name='telefono'  maxlength='30'onfocus='focusear(this)' placeholder = 'Phone Number'/>
                                        </td>
                                        <td>
                                            <select id="player" name="PaisS">
                                                <option>Select Country</option>
                                            </select>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td> 
                                            <select id="Estado" name = "EstadoS">
                                            </select>
                                        </td>
                                        <td>
                                            <input type='radio' name='sexo' id='hombre' value='Masculino' />
                                            <label for='hombre'>Male</label>
                                            <input type='radio' name='sexo' id='mujer' value='Femenino' />
                                            <label for='mujer'>Female</label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <input type='file' name='banner' id = 'bann'/>
                                        </td>
                                        <td> 
                                            <select name="Perfil" id="Perfil">
                                                <option value ='Usuario'>Usuario</option>
                                                <option value='Administrador'>Administrador</option>
                                            </select>
                                        </td>
                                    </tr>
                                </table> 
                            </div> 
                            <input type = "submit" id="enviar" value="Sing Me"  onclick='validar()' class="button1 buttonregistro"/></form>
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
</DOCTYPE>