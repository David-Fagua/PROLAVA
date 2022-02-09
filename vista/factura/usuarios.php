    <!--info--> 

    </--formulario--/>


    <center>

        <?php 
            include("../../logica/conexion.php");
            $con=conectar();

            $sql="SELECT *  FROM factura_usuarios";
            $query=mysqli_query($con,$sql);

            $row=mysqli_fetch_array($query);
        ?>

        <div id="wrapper" class="factura_usuarios">

            <h1>
            USUARIOS
            </h1>

            <center>
                <div class="col-md-1">
                    </div>
                        <div class="col-md-10">

                            <form class="form-group col-md-12" method="POST" name="form-work" action="../../logica/A_usuarios.php">
                                <fieldset>
                                    <div class="form-row">
                                        <div class="form-group col-md-3">
                                            <h3 class="control-label" for="text">Correo</h3>
                                            <input type="text" name="email" id="email" class="form-control" placeholder="Correo.">
                                        </div>
                                        <div class="form-group col-md-3">
                                            <h3 class="control-label" for="text">Clave</h3>
                                            <input type="text" name="clave" id="clave" class="form-control" placeholder="Clave.">
                                        </div>
                                        <div class="form-group col-md-3">
                                            <h3 class="control-label" for="text">Nombres</h3>
                                            <input type="text" name="first_name" id="first_name" class="form-control" placeholder="Nombres.">
                                        </div>
                                        <div class="form-group col-md-3">
                                            <h3 class="control-label" for="text">Apellidos</h3>
                                            <input type="text" name="last_name" id="last_name" class="form-control" placeholder="Apellidos.">
                                        </div>
                                        <div class="form-group col-md-3">
                                            <h3 class="control-label" for="text">Celular</h3>
                                            <input type="text" name="mobile" id="mobile" class="form-control" placeholder="Celular.">
                                        </div>
                                        <div class="form-group col-md-3">
                                            <h3 class="control-label" for="text">Dirección</h3>
                                            <input type="text" name="address" id="address" class="form-control" placeholder="Dirección.">
                                        </div>
                                        <div class="form-group col-md-3">
                                            <h3 class="control-label" for="text">Rol</h3>
                                            

                                            <select type="text" name="rol_id" class="form-control"  id="id" class="form-control" autocomplete="off">
                                                <option selected>2</option>
                                                <option selected>1</option>
                                            </select>
                                        </div>
                                    </div>
                                    <button  type="submit" class="btn btn-primary btn-lg btn-block info">Guardar</button>
                                </fieldset>
                            </form>
                        </div> 
                    
                        <div class="col-md-10">
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

                                            <!--<th><a href="actualizar.php?id=<?php echo $row['N_factura'] ?>" class="btn btn-info">Editar</a></th>
                                            <th><a href="delete.php?id=<?php echo $row['N_factura'] ?>" class="btn btn-danger">Eliminar</a></th>-->                                        
                                        </tr>
                                    <?php 
                                        }
                                    ?>
                                </tbody>
                            </table>
                        </div>
                    </center>
                <div class="col-md-1">
                </div>
            </div>
        </center>  
    </div>

</center>