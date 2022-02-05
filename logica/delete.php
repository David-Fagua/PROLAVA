<?php

include("conexion.php");
$con=conectar();

$N_factura=$_GET['N_factura'];

$sql="DELETE FROM factura  WHERE N_factura='$N_factura'";
$query=mysqli_query($con,$sql);

    if($query){
        Header("Location: consultar_f.php");
    }
?>
