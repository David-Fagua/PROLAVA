<!DOCTYPE html>
<html lang="es">

<head>
	<title>Lavaseco Cundinamarca</title>

	<?php include 'partials/head.php';?>
  <?php include 'partials/menu.php';?>

</br>

</--info--/>

<div id="wrapper" class="container">
                
  <center>

  <h1>Factura</h1><hr>
    <form  method="POST" name="form-work" action="logica/guardar.php">

      <fieldset>
      
        <div class="form-group">
          <div class="col-md-6">
            <label class="control-label" for="text">Celular</label>
            <input name="nombre" class="form-control" placeholder="Numero de Celular" type="text">
            </div>
          </div>

        <div class="form-group">
            <div class="col-md-6">
              <label class="control-label" for="text">Cantidad</label>
              <input name="Cantidad" class="form-control" placeholder="Cantidad de prendas" type="text">
            </div>
          </div>

          <div class="form-group">
            <div class="col-md-6">
              <label class="control-label" for="text">Piezas</label>
              <input name="Piezas" class="form-control" placeholder="Piezas de ropa" type="text">
            </div>
          </div>

          <div class="form-group">
            <div class="col-md-6">
              <label class="control-label" for="text">Detalle</label>
              <input name="Detalle" class="form-control" placeholder="Describa la prenda" type="text">
            </div>
          </div>

          <div class="form-group">
            <div class="col-md-6">
              <label class="control-label" for="text">Valor</label>
              <input name="Valor" class="form-control" placeholder="Valor total" type="text">
            </div>
          </div>

          <div class="form-group">
            <div class="col-md-12">
              <button type="submit" class="btn btn-primary btn-lg btn-block info">Guardar</button>
            </div>
          </div>

      </fieldset> 
    </form>
  </center>
</div>

<?php include 'partials/menufinal.php';?>
<?php include 'partials/footer.php';?>
