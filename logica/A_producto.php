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
$prenda  = $_POST['prenda'];

$sql="INSERT INTO productos VALUES('$id',' $prenda')";
$query= mysqli_query($con,$sql);

if($query){
    Header("Location: ../vista/Admin/productos.php");
    
}

?> 