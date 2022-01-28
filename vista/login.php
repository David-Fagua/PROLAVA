<?php
    include_once 'database.php';
    
    session_start();

    if(isset($_GET['cerrar_sesion'])){
        session_unset(); 

        // destroy the session 
        session_destroy(); 
    }
    
    if(isset($_SESSION['rol'])){
        switch($_SESSION['rol']){
            case 1:
                header('location: admin.php');
            break;

            case 2:
            header('location: colab.php');
            break;

            default:
        }
    }

    if(isset($_POST['username']) && isset($_POST['password'])){
        $username = $_POST['username'];
        $password = $_POST['password'];

        $db = new Database();
        $query = $db->connect()->prepare('SELECT *FROM usuarios WHERE username = :username AND password = :password');
        $query->execute(['username' => $username, 'password' => $password]);

        $row = $query->fetch(PDO::FETCH_NUM);
        
        if($row == true){
            $rol = $row[3];
            
            $_SESSION['rol'] = $rol;
            switch($rol){
                case 1:
                    header('location: admin.php');
                break;

                case 2:
                header('location: colab.php');
                break;

                default:
            }
        }else{
            // no existe el usuario
            echo "Nombre de usuario o contraseña incorrecto";
        }
        

    }

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Login</title>
</head>
<body>
    <form action="#" method="POST">
        Username: <br/><input type="text" name="username"><br/>
        Password: <br/><input type="text" name="password"><br/>
        <input type="submit" value="Iniciar sesión">
    </form>
</body>
</html>

<!--

<!DOCTYPE html>
<html lang="es">
<head>
  
  <title>Iniciar Sesión</title>

	<php include 'partials/head.php';?>
  <php include 'partials/menu.php';?>

<br>

--Inicio de sesión estructura--

<div class="row">
  <div class="col-md-3">
    </div>
    <div class="col-md-6">
    <form id="loginForm" action="validarCode.php" method="POST" role="form" class="border border-light p-5" style="background-color: #3365A6;">
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
                  <input type="text" name="txtUsuario" class="form-control" id="usuario" autofocus required placeholder="Usuario">
                </div>
              </div>
              <div class="form-group row">
                <h2 for="Contraseña" style="color: #ffffff;" class="col-sm-4 col-form-label">Contraseña</h2>
                <div class="col-sm-8">
                  <input type="password" placeholder="Contraseña" name="txtPassword" class="form-control" required id="password">
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

<php include 'partials/menufinal.php';?>
<php include 'partials/footer.php';?>

-->