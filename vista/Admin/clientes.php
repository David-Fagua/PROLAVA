
<!--HTML-->

<!DOCTYPE html>
<html lang="es">
<head>
<title>CLIENTES</title>


<?php include '../partials/headA.php';?>

<?php include '../partials/menuA.php';?>


<main>

</--formulario--/>

<?php 
    include("conexion.php");
    $con=conectar();

    $sql="SELECT *  FROM factura_orden";
    $query=mysqli_query($con,$sql);

    $row=mysqli_fetch_array($query);
?>

<div id="wrapper" class="factura_orden">



<div class="container mt-5">
        <div class="row"> 
            
            <div class="col-md-8">
                <table class="table" >
                    <thead class="table-success table-striped" >
                        <tr>
                            <th>Fa. No</th>
                            <th>Fecha Creación</th>
                            <th>Cliente</th>
                            <th>Factura Total</th>
                            <th></th>
                            <th></th>
                            <th></th>
                        </tr>
                    </thead>

                    <tbody>
                            <?php
                                while($row=mysqli_fetch_array($query)){
                            ?>

                                <tr>
                                    <th><?php  echo $row['order_id']?></th>
                                    <th><?php  echo $row['celular']?></th>
                                    <th><?php  echo $row['order_receiver_name']?></th>
                                    <th><?php  echo $row['order_total_after_tax']?></th>

                                    <th><a href="../factura/print_invoice.php?id=<?php echo '<td><a href="../factura/print_invoice.php?invoice_id='.$invoiceDetails["order_id"].'" title="Imprimir Factura"><div class="btn btn-primary"><span class="fa fa-print"></span></div></a></td>' ?>">Imprimir</a></th>
                                    
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

</main>


<?php include '../partials/footerA.php';?>