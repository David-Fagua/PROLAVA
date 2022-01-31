<?php 
    include("conexion.php");
    $con=conectar();

$id=$_GET['id'];

$sql="SELECT * FROM factura WHERE N_factura='$id'";
$query=mysqli_query($con,$sql);

$row=mysqli_fetch_array($query);
?>

<?php 
//seguridad de sessiones paginacion
session_start();
error_reporting(0);
$varsesion= $_SESSION['username'];
if($varsesion== null || $varsesion=''){
    header("location:../../index.php");
    die();
}

?>



<!--HTML-->

<!DOCTYPE html>
<html lang="es">
<head>
<title>FACTURA</title>


<?php include '../partials/headA.php';?>

<?php include '../partials/menuA.php';?>

<br>


<div id="page-wrapper">

</--formulario--/>

<div class="container mt-5">
    <form action="update.php" method="POST">
    
                <input type="hidden" name="N_factura" value="<?php echo $row['N_factura']  ?>">
                
                <input type="text" class="form-control mb-3" name="Celular" placeholder="Celular" value="<?php echo $row['Celular']  ?>">
                <input type="text" class="form-control mb-3" name="N_factura" placeholder="N_factura" value="<?php echo $row['N_factura']  ?>">
                <input type="text" class="form-control mb-3" name="Nombre_Cliente" placeholder="Nombre_Cliente" value="<?php echo $row['Nombre_Cliente']  ?>">
                <input type="text" class="form-control mb-3" name="Cantidad" placeholder="Cantidad" value="<?php echo $row['Cantidad']  ?>">
                <input type="text" class="form-control mb-3" name="Piezas" placeholder="Piezas" value="<?php echo $row['Piezas']  ?>">
                <input type="text" class="form-control mb-3" name="Detalle" placeholder="Detalle" value="<?php echo $row['Detalle']  ?>">
                <input type="text" class="form-control mb-3" name="Valor" placeholder="Valor" value="<?php echo $row['Valor']  ?>">
                <input type="text" class="form-control mb-3" name="Fecha_despacho" placeholder="Fecha_despacho" value="<?php echo $row['Fecha_despacho']  ?>">
                
            <input type="submit" class="btn btn-primary btn-block" value="Actualizar">
    </form>
    
</div>

</div>


<?php include '../partials/footerA.php';?>