<?php
 require 'conexion.php';
  
 $Celular = $_POST['Celular'];
 $Cantidad  = $_POST['Cantidad'];
 $Piezas = $_POST['Piezas'];
 $Detalle = $_POST['Detalle'];
 $Valor = $_POST['Valor'];

$insertar = "INSERT INTO factura VALUES ('$Celular','$Cantidad','$Piezas','$Detalle','$Valor') ";

$query = mysqli_query($conectar, $insertar);

if($query){

   echo "<script> alert('correcto');
    location.href = '../index.php';
   </script>";

}else{
    echo "<script> alert('incorrecto');
    location.href = '../index.php';
    </script>";
}






?>