<!DOCTYPE html>
<html lang="es">
<head>
  
  <title>Iniciar Sesión</title>

	<?php include 'partials/head.php';?>
  <?php include 'partials/menu.php';?>

<br>

<!--Inicio de sesión estructura-->

<div class="row">
  <div class="col-md-3">
    </div>
    <div class="col-md-6">
    <form id="loginForm" method="POST" role="form" class="border border-light p-5" style="background-color: #3365A6;">
      <div class="row">
        <div class="col-md-2"></div>
        <div class="col-md-8">
          <center>
            <img src="assets/icon/Usuario.png"  width="100" height="100" alt="Lavaseco Cundinamarca">
            <h2 style="color: #ffffff;">Iniciar Sesión</h2>
          </center>
          <div class="myform-bottom">
            <form role="form" action="./Admin/inicio.php" method="post">
              <div class="form-group row">
                <h2 for="usuario" style="color: #ffffff;" class="col-sm-4 col-form-label">Usuario</h2>
                <div class="col-sm-8">
                  <input type="text" name="username" class="form-control" id="usuario" autofocus required placeholder="Usuario">
                </div>
              </div>
              <div class="form-group row">
                <h2 for="Contraseña" style="color: #ffffff;" class="col-sm-4 col-form-label">Contraseña</h2>
                <div class="col-sm-8">
                  <input type="password" name="password" placeholder="Contraseña" class="form-control" required id="password">
                </div>
              </div>
              <div class="text-center">
                <h6 style="color: #ffffff;">¿Olvido su
                  <a href="Recordar.php" style="color: #F2E63D;">Contraseña</a>
                  ?
                </h6>
              </div>
              <div class="text-center">
                <h6 style="color: #ffffff;">¿No esta Registrado?
                  <a href="Registrar.php" style="color: #F2E63D;">Registrarme</a>
                </h6>
              </div>
              <br/>
              <center>
                <button style="float:center;" class="btn btn-light btn-lg" role="button" type="submit" class="mybtn">
                  Ingresar
                </button>
              </center>
            </form>
          </div>
        </div>
      </div>
    <div class="col-md-2">
    </div>
  </form>
  </div>
</div>

<?php include 'partials/menufinal.php';?>
<?php include 'partials/footer.php';?>

