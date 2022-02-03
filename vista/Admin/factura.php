<!--HTML-->

<!DOCTYPE html>
<html lang="es">
<head>

<title>FACTURA</title>


<?php include '../partials/headA.php';?>

<?php include '../partials/menuA.php';?>

<main>

</--formulario--/>

<?php 
    include("conexion.php");
    $con=conectar();

    $sql="SELECT *  FROM factura";
    $query=mysqli_query($con,$sql);

    $row=mysqli_fetch_array($query);
?>


<?php include '../factura/create_invoice.php';?>

</main>

<?php include '../partials/footerA.php';?>
