<!--*********************************************************
* Sistema de consulta para facturas                         *
*                                                           *
* Fecha:    2022-02-04                                      *
* Autor:  David Fagua                                       *
************************************************************-->
<?php 
  session_start();
  include('vista/factura/header.php');
  $loginError = '';
  if (!empty($_POST['email']) && !empty($_POST['pwd'])) {
    include 'vista/factura/Invoice.php';
    $invoice = new Invoice();
    $user = $invoice->loginUsers($_POST['email'], $_POST['pwd']); 
    if(!empty($user)) {
      $_SESSION['user'] = $user[0]['first_name']."".$user[0]['last_name'];
      $_SESSION['userid'] = $user[0]['id'];
      $_SESSION['email'] = $user[0]['email'];   
      $_SESSION['address'] = $user[0]['address'];
      $_SESSION['mobile'] = $user[0]['mobile'];
      $_SESSION['rol_id'] = $user[0]['rol_id'];
      header("Location:vista/admin/home.php");
    } else {
      $loginError = "Correo electrónico o contraseña no válidos!";
    }
  }
?>

<!DOCTYPE html>
<html lang="es">
<head>
  
  <title>Iniciar Sesión</title>

	<?php include 'partials/head.php';?>
  <?php include 'partials/menu.php';?>

<br>


<center>
  <div class="col-md-3">
  </div>
    <div class="col-md-6"> 
    <form id="loginForm"  method="POST" role="form" class="border border-light p-5" style="background-color: #3365A6;">

      <div class="login-form">
        <form action="" method="post">
          <center>
            <img src="assets/icon/Usuario.png"  width="100" height="100" alt="Lavaseco Cundinamarca">
            <h2 style="color: #ffffff;">Iniciar Sesión</h2>
          </center>  
          <div class="form-group">
            <?php if ($loginError ) { ?>
            <div class="alert alert-danger"><?php echo $loginError; ?></div>
            <?php } ?>
            </div>         
            <div class="form-group">
                <input name="email" id="email" type="email" class="form-control" placeholder="Email address" autofocus required>
            </div>
            <div class="form-group">
                <input type="password" class="form-control" name="pwd" placeholder="clave" required>
            </div> 
            <div class="form-group">
                <button type="submit" name="login" class="btn btn-primary" style="width: 100%;"> Acceder </button>
            </div>
            <div class="clearfix">
            <!--<label class="pull-left checkbox-inline"><input type="checkbox"> Recordarme</label>-->
          </div>        
        </form>
        </div>   

        </div>
        <div class="col-xs-6">-</div> 
        </div>    
      </div>  

    </div>
  <div class="col-md-3">
  </div>
</center>

<!--Inicio de sesión estructura-->

<!--<center>
  <div class="col-md-3">
  </div>
    <div class="col-md-6"> 
    <form id="loginForm" action="logica/validar.php"  method="POST" role="form" class="border border-light p-5" style="background-color: #3365A6;">
      <div class="row">
        <div class="col-md-2"></div>
        <div class="col-md-8">
          <center>
            <img src="assets/icon/Usuario.png"  width="100" height="100" alt="Lavaseco Cundinamarca">
            <h2 style="color: #ffffff;">Iniciar Sesión</h2>
          </center>
          <div class="myform-bottom">
            <form role="form"  method="post">
              <div class="form-group row">
                <h2 for="usuario" style="color: #ffffff;" class="col-sm-4 col-form-label">Usuario</h2>
                <div class="col-sm-8">
                  <input type="text" name="email" class="form-control" id="usuario" autofocus required placeholder="Usuario">
                </div>
              </div>
              <div class="form-group row">
                <h2 for="Contraseña" style="color: #ffffff;" class="col-sm-4 col-form-label">Contraseña</h2>
                <div class="col-sm-8">
                  <input type="password" name="clave" placeholder="Contraseña" class="form-control" required id="password">
                </div>
              </div>
              <div class="text-center">
                <h6 style="color: #ffffff;">¿Olvido su
                  <a href="Recordar.php" style="color: #F2E63D;">Contraseña</a>
                  ?
                </h6>
              </div>
              <br/>
              <center>
                <button style="float:center;" name="login" class="btn btn-dark" role="button" type="submit" class="mybtn">
                  Ingresar
                </button>
              </center>
            </form>
          </div>
        </div>
      </div>
    </form>
  </div>
  <div class="col-md-3">
  </div>
</center>-->


<!--<?php include 'partials/menufinal.php';?>-->
<?php include 'partials/footer.php';?>