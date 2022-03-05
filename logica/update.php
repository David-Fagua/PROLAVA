<!--*********************************************************
* Sistema PROLAVA                                           *
*                                                           *
* Fecha:    2022-01-25                                      *
* Autor:  David Fagua                                       *
* Contacto:  fagua99@gmail.com                              *
************************************************************-->

<?php

include("conexion.php");
$con=conectar();

$Celular = $_POST['Celular'];
$N_factura = $_POST['N_factura'];
$Nombre_Cliente = $_POST['Nombre_Cliente'];
$Cantidad = $_POST['Cantidad'];
$Piezas = $_POST['Piezas'];
$Detalle = $_POST['Detalle'];
$Valor = $_POST['Valor'];
$Fecha_despacho = $_POST['Fecha_despacho'];

$sql="UPDATE factura SET  Celular='$Celular',N_factura='$N_factura',Nombre_Cliente='$Nombre_Cliente',Cantidad='$Cantidad',Piezas='$Piezas',Detalle='$Detalle',Valor='$Valor',Fecha_despacho='$Fecha_despacho'";
$query=mysqli_query($con,$sql);

    if($query){
        Header("Location: consultar_f.php");
    }
?>