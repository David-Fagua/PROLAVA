$(buscar());

function buscar_datos(consulta){
    $.ajax({
        url: '../../vista/factura/buscar.php',
        type: 'POST',
        dataType: 'html',
        data: {consulta: consulta},
    })
    .done(function(respuesta){
        $("#datos").html(respuesta);
    })
    .fail(function() {
        console.log("error");
    })
}
