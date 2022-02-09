<!-- agregar usuarios -->

<?php
include("conexion.php");
$con=conectar();

$id = $_POST['id'];
$email  = $_POST['email'];
$clave  = $_POST['clave'];
$first_name  = $_POST['first_name'];
$last_name  = $_POST['last_name'];
$mobile  = $_POST['mobile'];
$address  = $_POST['address'];
$rol_id  = $_POST['rol_id'];


$sql="INSERT INTO factura_usuarios VALUES('$id',' $email','$clave','$first_name','$last_name','$mobile','$address','$rol_id')";
$query= mysqli_query($con,$sql);

if($query){
    Header("Location: ../vista/Admin/usuarios.php");
    
}

?>