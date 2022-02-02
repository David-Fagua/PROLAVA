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

    $sql="SELECT *  FROM factura_usuarios";
    $query=mysqli_query($con,$sql);

    $row=mysqli_fetch_array($query);
?>

<div id="wrapper" class="factura_usuarios">



<div class="container mt-5">
        <div class="row"> 
            
            <div class="col-md-8">
                <table class="table" >
                    <thead class="table-success table-striped" >
                        <tr>
                            <th>id</th>
                            <th>email</th>
                            <th>Nombre</th>
                            <th>Apellidos</th>
                            <th>Celular</th>
                            <th>dirección</th>
                            <th>Rol</th>
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
                                    <th><?php  echo $row['email']?></th>
                                    <th><?php  echo $row['first_name']?></th>
                                    <th><?php  echo $row['last_name']?></th>
                                    <th><?php  echo $row['mobile']?></th>
                                    <th><?php  echo $row['address']?></th>
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