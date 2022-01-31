
<!--HTML-->

<!DOCTYPE html>
<html lang="es">
<head>
<title>CLIENTES</title>


<?php include '../partials/headA.php';?>

<?php include '../partials/menuA.php';?>

<br></br>

<div id="page-wrapper">

</--formulario--/>

<?php 
    include("conexion.php");
    $con=conectar();

    $sql="SELECT *  FROM clientes";
    $query=mysqli_query($con,$sql);

    $row=mysqli_fetch_array($query);
?>

<div id="wrapper" class="clientes">



<div class="container mt-5">
        <div class="row"> 
            
            <div class="col-md-8">
                <table class="table" >
                    <thead class="table-success table-striped" >
                        <tr>
                            <th>id</th>
                            <th>Celular</th>
                            <th>Nombre_cliente</th>
                            <th></th>
                            <th></th>
                        </tr>
                    </thead>

                    <tbody>
                            <?php
                                while($row=mysqli_fetch_array($query)){
                            ?>
                                <tr>
                                    <th><?php  echo $row['id']?></th>
                                    <th><?php  echo $row['Celular']?></th>
                                    <th><?php  echo $row['Nombre_Cliente']?></th>

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


<?php include '../partials/footerA.php';?>