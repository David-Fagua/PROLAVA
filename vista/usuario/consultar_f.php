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
<title>FACTURA</title>


<?php include '../partials/headU.php';?>

<?php include '../partials/menuU.php';?>

<br>

<div id="page-wrapper">

</--formulario--/>

<?php 
    include("conexion.php");
    $con=conectar();

    $sql="SELECT *  FROM factura";
    $query=mysqli_query($con,$sql);

    $row=mysqli_fetch_array($query);
?>

<div id="wrapper" class="container">



<div class="container mt-5">
        <div class="row"> 
            
            <div class="col-md-8">
                <table class="table" >
                    <thead class="table-success table-striped" >
                        <tr>
                            <th>Celular</th>
                            <th>Factura</th>
                            <th>Nombre</th>
                            <th>Cantidad</th>
                            <th>Cantida de Piezas</th>
                            <th>Detalles</th>
                            <th>Valor</th>
                            <th>Fecha</th>
                            <th></th>
                            <th></th>
                        </tr>
                    </thead>

                    <tbody>
                            <?php
                                while($row=mysqli_fetch_array($query)){
                            ?>
                                <tr>
                                    <th><?php  echo $row['Celular']?></th>
                                    <th><?php  echo $row['N_factura']?></th>
                                    <th><?php  echo $row['Nombre_Cliente']?></th>
                                    <th><?php  echo $row['Cantidad']?></th>    
                                    <th><?php  echo $row['Piezas']?></th> 
                                    <th><?php  echo $row['Detalle']?></th> 
                                    <th><?php  echo $row['Valor']?></th> 
                                    <th><?php  echo $row['Fecha_despacho']?></th> 
                                    <th><a href="actualizar.php?id=<?php echo $row['N_factura'] ?>" class="btn btn-info">Editar</a></th>
                                    <th><a href="delete.php?id=<?php echo $row['N_factura'] ?>" class="btn btn-danger">Eliminar</a></th>                                        
                                </tr>
                            <?php 
                                }
                            ?>
                    </tbody>
                </table>
            </div>
        </div>  
</div>

</div>



<?php include '../partials/footerU.php';?>
