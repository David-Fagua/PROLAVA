
</--Productos--/>

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

            <div class="row">

                <div class="col-md-4">

                    <form class="form-group col-md-12" method="POST" name="form-work" action="../../logica/A_producto.php">
                        <fieldset>
                        <div>
                            <h3 class="control-label" for="text">Nuevo producto</h3>
                            <input type="text" name="prenda" id="prenda" class="form-control" placeholder="Ingrese nuevo producto." required>
                        </div>
                        <button type="submit" class="btn btn-primary btn-lg btn-block info">Guardar</button>
                        </fieldset>
                    </form>
                </div>


                <div style="height: 480px;width: 600px; overflow-y: auto; " class="container mt-8">
                    <div class="row"> 
                        
                        <div class="col-md-12">
                            <table id="data-table" class="table table-condensed table-striped">
                                <thead class="table-success table-striped">
                                    <tr>
                                        <th class="header" width="40%">Codigo</th>
                                        <th class="header" width="60%">Prenda</th>
                                        <th class="header"></th>
                                        <th class="header"></th>
                                    </tr>
                                </thead>

                                <!--contenido-->

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
                    </div>
                </div>
            </div>
        </div>

    </center>

<style type="text/css"> 
    thead tr th { 
        position: sticky;
        top: 0;
        z-index: 10;
        background-color: #3365A6;
    }
</style>