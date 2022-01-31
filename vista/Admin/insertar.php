<?php
include("conexion.php");
$con=conectar();

$Celular = $_POST['Celular'];
$N_factura  = $_POST['N_factura'];
$Nombre_Cliente  = $_POST['Nombre_Cliente'];
$Cantidad  = $_POST['Cantidad'];
$Piezas  = $_POST['Piezas'];
$Detalle = $_POST['Detalle'];
$Valor = $_POST['Valor'];
$Fecha_despacho = $_POST['Fecha_despacho'];


$sql="INSERT INTO factura VALUES('$Celular',' $N_factura','$Nombre_Cliente','$Cantidad','$Piezas','$Detalle','$Valor','$Fecha_despacho')";
$query= mysqli_query($con,$sql);

if($query){
    Header("Location: factura.php");
    
}

?>