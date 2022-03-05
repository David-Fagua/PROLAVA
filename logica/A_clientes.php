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

$id = $_POST['id'];
$celular  = $_POST['celular'];
$nombre_cliente  = $_POST['nombre_cliente'];
$correo  = $_POST['correo'];
$direccion  = $_POST['direccion'];


$sql="INSERT INTO clientes VALUES('$id',' $celular','$nombre_cliente','$correo','$direccion')";
$query= mysqli_query($con,$sql);

if($query){
    Header("Location: ../vista/Admin/clientes.php");
    
}

?>