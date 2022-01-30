<?php 
//seguridad de sessiones paginacion
session_start();
error_reporting(0);
$varsesion= $_SESSION['username'];
if($varsesion== null || $varsesion=''){
    header("location:../index.php");
    die();
}

?>

<!--HTML-->

<!DOCTYPE html>
<html lang="es">
<head>
<title>USUARIO</title>


<?php include '../partials/headU.php';?>

<?php include '../partials/menuU.php';?>

<br></br>

<div id="page-wrapper">

  <!--info--> 

  </--formulario--/>

  <div id="texto">
        <!--Cuerpo-->
        <p id="texto-contenedor-1">Nueva Fase de desarrollo en php, el sistema está en pleno desarrollo.</p>
    </div>

    <div id="foto">
            <img id="foto-contenedor-1" src="../assets/icon/1.png"/>
    </div>

</div>

<?php include '../partials/footerU.php';?>
