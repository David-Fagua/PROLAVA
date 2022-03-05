<!--*********************************************************
* Sistema PROLAVA                                           *
*                                                           *
* Fecha:    2022-01-25                                      *
* Autor:  David Fagua                                       *
* Contacto:  fagua99@gmail.com                              *
************************************************************-->

</--clientes--/>

<?php 
    include("../../logica/conexion.php");
    $con=conectar();

    $sql="SELECT *  FROM clientes";
    $query=mysqli_query($con,$sql);

    $row=mysqli_fetch_array($query);
?>


<center>

    <div id="wrapper" class="clientes">

        <h1>
        CLIENTES
        </h1>

        <div class="row">

            <div class="col-md-3">

                </--Formulario clientes--/>

                    <form class="form-group col-md-12" method="POST" name="form-work" action="../../logica/A_clientes.php">
                        <fieldset>
                            <div class="form-row">
                                <div class="form-group col-md-12">
                                    <h3 class="control-label" for="text">Celular</h3>
                                    <input type="text" name="celular" id="celular" class="form-control" placeholder="Ingrese nuevo producto." required>
                                </div>
                                <div class="form-group col-md-12">
                                    <h3 class="control-label" for="text">Nombre</h3>
                                    <input type="text" name="nombre_cliente" id="nombre_cliente" class="form-control" placeholder="Ingrese nuevo producto." required>
                                </div>
                                <div class="form-group col-md-12">
                                    <h3 class="control-label" for="text">Correo</h3>
                                    <input type="mail" name="correo" id="correo" class="form-control" placeholder="Ingrese nuevo producto.">
                                </div>
                                <div class="form-group col-md-12">
                                    <h3 class="control-label" for="text">Dirección</h3>
                                    <input type="text" name="direccion" id="direccion" class="form-control" placeholder="Ingrese nuevo producto.">
                                </div>
                            </div>
                            <button  type="submit" class="btn btn-primary btn-lg btn-block info">Guardar</button>
                        </fieldset>
                    </form>
                </div>


                <div style="height: 480px;width: 700px; overflow-y: auto; " class="container mt-9">
                    <div class="row">
                                
                        <div class="col-md-12">
                            <table class="table" >
                                <thead class="table-success table-striped" >
                                    <tr>
                                        <th width="5%">id</th>
                                        <th width="15%">Celular</th>
                                        <th width="20%">Nombre_cliente</th>
                                        <th width="30%">Correo</th>
                                        <th width="30%">Dirección</th>
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
                                                <th><?php  echo $row['celular']?></th>
                                                <th><?php  echo $row['nombre_cliente']?></th>
                                                <th><?php  echo $row['correo']?></th>
                                                <th><?php  echo $row['direccion']?></th>

                                                <!--<th><a href="actualizar.php?id=<?php echo $row['N_factura'] ?>" class="btn btn-info">Editar</a></th>
                                                <th><a href="delete.php?id=<?php echo $row['N_factura'] ?>" class="btn btn-danger">Eliminar</a></th>-->                                        
                                            </tr>
                                        <?php 
                                            }
                                        ?>
                                </tbody>
                            </table>
                        </div> 
                    <div class="col-md-1">
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