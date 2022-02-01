<!--HTML-->

<!DOCTYPE html>
<html lang="es">
<head>
<title>USUARIO</title>


<?php include '../partials/headA.php';?>

<?php include '../partials/menuA.php';?>

<br>

<div id="page-wrapper">

  <!--info--> 

  </--formulario--/>

<?php 
    include("conexion.php");
    $con=conectar();

    $sql="SELECT *  FROM usuarios";
    $query=mysqli_query($con,$sql);

    $row=mysqli_fetch_array($query);
?>

<div id="wrapper" class="usuarios">



<div class="container mt-5">
        <div class="row"> 
            
            <div class="col-md-8">
                <table class="table" >
                    <thead class="table-success table-striped" >
                        <tr>
                            <th>id</th>
                            <th>name</th>
                            <th>username</th>
                            <th>clave</th>
                            <th>rol_id</th>
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
                                    <th><?php  echo $row['name']?></th>
                                    <th><?php  echo $row['username']?></th>
                                    <th><?php  echo $row['clave']?></th>
                                    <th><?php  echo $row['rol_id']?></th>

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

<?php include '../partials/footerS.php';?>