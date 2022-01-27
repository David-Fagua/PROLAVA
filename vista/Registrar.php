<!DOCTYPE html>
<html lang="es">
<head>

	<title>Registrar</title>

  <link rel="icon" type="image/png" href="../assets/icon/Logo.png">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
  <link rel="stylesheet" type="text/css" href="../assets/css/overhang.min.css" />
  
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <meta name="description" content="">
  <meta name="author" content="">
  
</head>

<body>

<br><br/>
<br/>

<!-- Navbar -->

<div>
  <nav class="navbar navbar-light navbar-expand-lg fixed-top" style="background-color: #47a5b4;">
    <a href="../../HSD_php/index.php" class="navbar-brand" >
      <img src="../assets/icon/Logo.png" width="40" height="40" alt="HSD PLUS"></a>
      <a href="../../HSD_php/index.php" class="navbar-brand" style="color: #ffffff;">HSD PLUS</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto"></ul>
      </div>
    </a>
  </nav>
</div>


<div class="row" >
    <div class="col-md-3">
    </div>
    <div class="col-md-6">
      <form action="registroCode.php" method="post" class="border border-light p-5" style="background-color: #47a5b4;">
      <center>
        <img src="../assets/icon/1.png" width="100" height="100" alt="HSD PLUS"></a>
        <h2 >Crear Cuenta</h2>
          </br>
      </center>

      <center>
        <div class="form-group row">
          <h2 for="nombre" class="col-sm-3 col-form-label">Nombre</h2>
          <div class="col-sm-8">
            <input type="text" name="txtNombre" class="form-control" id="nombre" autofocus required placeholder="Ingresa tu nombre">
          </div>
        </div>

        <div class="form-group row">
          <h2 for="email" class="col-sm-3 col-form-label">Correo</h2>
          <div class="col-sm-8">
            <input type="email" name="txtEmail" class="form-control" id="email"  required placeholder="Ingresa tu correo">
          </div>
        </div>  

        <div class="form-group row">
          <h2 for="usuario" class="col-sm-3 col-form-label">Usuario</h2>
          <div class="col-sm-8">
            <input type="text" name="txtUsuario" class="form-control" id="usuario" autofocus required placeholder="usuario">
          </div>
        </div>

        <div class="form-group row">
          <h2 for="password" class="col-sm-3 col-form-label">Password</h2>
          <div class="col-sm-8">
            <input type="password" name="txtPassword" class="form-control" required id="password" placeholder="*******">
          </div>
        </div>

      </center>
      <center>
        <button type="submit" class="btn btn-light btn-lg">Registrar</button>
      </center>
    <div class="col-md-3">
    </div>
    </form>
  </div>
</div>

<script src="js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jqueryui/1.10.4/jquery-ui.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script type="text/javascript" src="assets/js/overhang.min.js"></script>
<script src="assets/js/app.js"></script>

</body>
</html>
</html>