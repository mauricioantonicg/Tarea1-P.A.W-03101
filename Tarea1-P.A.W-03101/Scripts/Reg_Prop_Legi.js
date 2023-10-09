$(document).ready(function () {
    $(".ddl_tipoIdentificacion").change(function () { validarTipoIdentificacion(); });

    $(".btn_limpiar").on("click", function () { limpiarformulario(); });    

    $(".btn_guardar").on("click", function () { guardarDatosFormularioEnjson() });  
});

//Cambiar tipo de validacion segun el tipo de identificacion nacional o residencia
function validarTipoIdentificacion() {

    if ($(".ddl_tipoIdentificacion").val() === "Cédula") {

        $(".txt_numIdentif").attr({
            'MinLength' : "8",
            'MaxLength': "8",
            'placeholder': "8 numeros"
        });  

        $(".txt_numIdentif").val("");

    } else {

        $(".txt_numIdentif").attr({
            'MinLength': "12",
            'MaxLength': "12",
            'placeholder': "12 numeros"
        });

        $(".txt_numIdentif").val("");

    }

}

//Guardar los datos del forulario en archivo Json 
function guardarDatosFormularioEnjson(e) {

    e.preventDefault();

    var tipoIdentificacion = $(".ddl_tipoIdentificacion").val();
    var numIdentificacion = $(".txt_numIdentif").val();
    var nombre = $(".txt_nombre").val();
    var apellido1 = $(".txt_apellido1").val();
    var apellido2 = $(".txt_apellido2").val();
    var numtelefono = $(".txt_telefono").val(); 
    var email = $(".txt_Email").val();
    var provincia = $(".ddl_provincia").val();
    var canton = $(".ddl_canton").val();
    var propuesta = $(".txt_Propuesta").val();

    $.ajax({

        url: "controladorArchivosJson.aspx",
        data: {
            tipoIdentificacion: tipoIdentificacion,
            numIdentificacion: numIdentificacion,
            nombre: nombre,
            apellido1: apellido1,
            apellido2: apellido2,
            numtelefono: numtelefono,
            email: email,
            provincia: provincia,
            canton: canton,
            propuesta: propuesta
        },
        type: "post",
        success: function (data) {
            /*if (data.substring(0, 10) === "registrado") {*/
                alert("Registrado Correctamente");
                location.href = "RegistradoCorrectamente.aspx";
            //} else {
            //    alert("No fue posible realizar el registro");
            //}
        },
        error: function (data) {
            alert("Error"+data);
        }
    });

    alert('Se detuvo el guardado por defecto');

}

//Limpiar todos los campos del formulario
function limpiarformulario(e) {    

    e.preventDefault();

    $(".ddl_tipoIdentificacion").val("Cédula");
    $(".txt_numIdentif").val("");
    $(".txt_nombre").val("");
    $(".txt_apellido1").val("");
    $(".txt_apellido2").val("");
    $(".txt_telefono").val("");
    $(".txt_Email").val("");
    $(".ddl_provincia").val("San José");
    $(".ddl_canton").val("Guanacaste");
    $(".txt_Propuesta").val("");    

}