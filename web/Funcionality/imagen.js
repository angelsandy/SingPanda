$(document).ready(function () {
    $("#imagenP").click(function () {
        $("#imgperfil").click();
    });
    function readURL(input) {

        if (input.files && input.files[0]) {
            var reader = new FileReader();

            reader.onload = function (e) {
                $('#imagenP').attr('src', e.target.result);
            }

            reader.readAsDataURL(input.files[0]);
        }
    }

    $("#imgperfil").change(function () {
        readURL(this);
    });
});