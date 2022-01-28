<?php
    require 'conexion.php';
    
    $Celular = $_POST['Celular'];
    $N_factura  = $_POST['N_factura'];
    $Nombre_Cliente  = $_POST['Nombre_Cliente'];
    $Cantidad  = $_POST['Cantidad'];
    $Piezas  = $_POST['Piezas'];
    $Detalle = $_POST['Detalle'];
    $Valor = $_POST['Valor'];
    $Fecha_despacho = $_POST['Fecha_despacho'];

    $insertar = "INSERT INTO factura VALUES ('$Celular',' $N_factura','$Nombre_Cliente','$Cantidad','$Piezas','$Detalle','$Valor','$Fecha_despacho') ";

    $query = mysqli_query($conexion, $insertar);

    //--Alerta Correcto--//

    if($query){

    echo "<script> alert('correcto');
        location.href = '../index.php';
    </script>";

    //--Alerta Incorrecto--//

    }else{
        echo "<script> alert('incorrecto');
        location.href = '../index.php';
        </script>";
    }


?>