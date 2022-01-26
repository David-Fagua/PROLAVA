<!DOCTYPE html>
<html lang="es">

<head>
	<title>Lavaseco Cundinamarca</title>

	<?php include 'partials/head.php';?>
  <?php include 'partials/menu.php';?>

</br>

</--info--/>

</--formulario--/>

<div id="wrapper" class="container">
                
  <center>

  <h1>Factura</h1><hr>
    <form  method="POST" name="form-work" action="logica/guardar.php">

      <fieldset>
      
        <div class="form-row">

          <div class="form-group col-md-2">
            <label class="control-label" for="text">Celular</label>
            <input type="number" maxlength="10" oninput="if(this.value.length > this.maxLength) this.value = this.value.slice(0, this.maxLength);"  name="Celular" class="form-control" placeholder="Numero de Celular">
          </div>

          <div class="form-group col-md-2">
            <label class="control-label" for="text">Codigo de Factura</label>
            <input type="number" name="N_factura" class="form-control" placeholder="Numero de factura">
          </div>

          <div class="form-group col-md-4">
            <label class="control-label" for="text">Nombre del Cliente</label>
            <input type="text" name="Nombre_Cliente" class="form-control" placeholder="Nombre del Cliente">
          </div>
        
          <div class="form-group col-md-2">
            <label class="control-label" for="text">Cantidad</label>
            <input type="text" name="Cantidad" class="form-control" placeholder="Cantidad de prendas">
          </div>

          <div class="form-group col-md-2">
            <label class="control-label" for="text">Catida de Piezas</label>
            <input type="text" name="Piezas" class="form-control" placeholder="Catida de Piezas">
          </div>
        </div>

        <div class="form-row">

          </--Area de texto libre--/>

          <div class="form-group col-md-6">
            <label for="validationTextarea">Detalles</label>
            <textarea name="Detalle" class="form-control " id="validationTextarea" placeholder="Describa la prenda"></textarea>
          </div>

          </--Fin de Area de texto libre--/>

          <div class="form-group col-md-3">
            <label class="control-label" for="text">Valor</label>
            <input type="number" name="Valor" class="form-control" placeholder="Valor total">
          </div>

          <div class="form-group col-md-3">
            <label class="control-label" for="text">Fecha</label>
            <input type="date" name="Fecha_despacho" class="form-control" placeholder="AAAA/MM/DD" >
          </div>
        </div>

        <div class="form-group">
          <div class="col-md-7">
            <button type="submit" class="btn btn-primary btn-lg btn-block info">Guardar</button>
          </div>
        </div>

      </fieldset> 
    </form>
  </center>
</div>

<?php include 'partials/menufinal.php';?>
<?php include 'partials/footer.php';?>
