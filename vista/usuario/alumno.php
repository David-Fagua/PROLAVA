<?php 
    include("conexion.php");
    $con=conectar();

    $sql="SELECT *  FROM factura";
    $query=mysqli_query($con,$sql);

    $row=mysqli_fetch_array($query);
?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title> FACTURA</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="css/style.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
        
</head>
<body>
<div class="container mt-5">
        <div class="row"> 
            
            <div class="col-md-3">
                <h1>Ingrese datos</h1>
                    <form action="insertar.php" method="POST">

                        <input type="text" class="form-control mb-3" name="Celular" placeholder="Celular">
                        <input type="text" class="form-control mb-3" name="N_factura" placeholder="Codigo de Factura">
                        <input type="text" class="form-control mb-3" name="Nombre_Cliente" placeholder="Nombre">
                        <input type="text" class="form-control mb-3" name="Cantidad" placeholder="Cantidad">
                        <input type="text" class="form-control mb-3" name="Piezas" placeholder="Cantida de Piezas">
                        <input type="text" class="form-control mb-3" name="Detalle" placeholder="Detalles">
                        <input type="text" class="form-control mb-3" name="Valor" placeholder="Valor">
                        <input type="text" class="form-control mb-3" name="Fecha_despacho" placeholder="Fecha">
                        
                        <input type="submit" class="btn btn-primary">
                    </form>
            </div>

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
</body>
</html>