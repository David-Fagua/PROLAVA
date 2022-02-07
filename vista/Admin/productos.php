

<!--HTML-->

<!DOCTYPE html>
<html lang="es">
<head>
<title>Productos</title>


<?php include '../partials/headA.php';?>

<?php include '../partials/menuA.php';?>

<main>

    <!--info--> 

    </--formulario--/>

    <?php 
        include("../../logica/conexion.php");
        $con=conectar();

        $sql="SELECT *  FROM productos";
        $query=mysqli_query($con,$sql);

        $row=mysqli_fetch_array($query);
    ?>

    <center>

        <div id="wrapper" class="productos">

        <h1>
        Productos
        </h1>


        <div class="container mt-12">
            <div class="row"> 
                
                <div class="col-md-8">
                    <table class="table" >
                        <thead class="table-success table-striped" >
                            <tr>
                                <th>Codigo</th>
                                <th>Prenda</th>
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
                                        <th><?php  echo $row['prenda']?></th>

                                        <!--<th><a href="actualizar.php?id=<?php echo $row['N_factura'] ?>" class="btn btn-info">Editar</a></th>
                                        <th><a href="delete.php?id=<?php echo $row['N_factura'] ?>" class="btn btn-danger">Eliminar</a></th>-->                                        
                                    </tr>
                                <?php 
                                    }
                                ?>
                        </tbody>
                    </table>
                </div>

                <div class="col-md-4">

                    <form class="form-group col-md-12" method="POST" name="form-work" action="../../logica/insertar_producto.php">
                        <fieldset>
                        <div>
                            <h3 class="control-label" for="text">Nuevo producto</h3>
                            <input type="text" name="prenda" id="prenda" class="form-control" placeholder="Ingrese nuevo producto." required>
                        </div>
                        <button type="submit" class="btn btn-primary btn-lg btn-block info">Guardar</button>
                        </fieldset>
                    </form>
                </div>  
            </div>

    </center>

</main>



<?php include '../partials/footerA.php';?>