
<!--Navbar Superior-->
<nav class="navbar navbar-light navbar-expand-lg fixed-top" style="background-color: #000000;">
    <a href="home.php" class="navbar-brand" >
        <img src="../../assets/icon/Logo.png" width="196" height="47" alt="HOME">
    </a>
    <a class="badge badge-info" style="background-color: #F2E63D;">
        <?php echo $_SESSION["usuario"]["privilegio"] == 0 ? 'Admin' : 'Usuario'; ?>
    </a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent"></div>
      
    <ul class="nav navbar-left navbar-top-links">
        <li class="dropdown navbar-inverse">
          <div>
            <button type="button" class="btn btn-link" >
              <a href="home.php"  >
                <img src="../../assets/icon/lava.png" width="40" height="40" alt="">
              </a>
            </button>
          </div>
        </li>
      </ul>
      
    <ul class="nav navbar-right navbar-top-links">
        <li class="dropdown navbar-inverse">
            <button  class="btn" class="btn btn-sec"  data-toggle="dropdown" aria-haspopup="false" aria-expanded="false" style="background-color: #BF0A19;">
                <a style="color: #ffffff;">
                    <img src="../../assets/icon/user_A.png" width="30" height="30">
                    <?php echo $_SESSION["usuario"]["privilegio"] == 0 ? 'Admin' : 'Usuario'; ?>
                    <?php echo $_SESSION["username"]; ?>
                </a> 
            </button>
            <ul class="dropdown-menu dropdown-user">
                <li><a href="usuario.png.php" class="badge badge-light" style="color: #000000;"><i class="fa fa-user fa-fw"></i>Usuario</a></li>
                <li><a href="../Error404.php" class="badge badge-light" style="color: #000000;"><i class="fa fa-gear fa-fw"></i> Ajustes</a></li>
                <li><a href="../cerrar_sesion.php" class="badge badge-light" style="color: #000000;"><i class="fa fa-sign-out fa-fw"></i>Cerrar Sesión</a></li>
            </ul>
        </li>
    </ul>
</nav>

<!--Navbar Izquierdo-->

<div id="barra-lateral" style="background-color: #3365A6;">
    
    </br>

     <div  id="contenedor-logos-primero" class="contenedor-logos">
        <div class="logo">
        <img src="../../assets/icon/1.png" width="25" height="25">
        </div>
        <a  href="usuario.php" class="title-menu" class="fa fa-sign-out fa-fw" style="color: #F2E63D;"><?php echo $_SESSION["username"]; ?></a>
    </div>

    <div style="font-size:12px;" class="contenedor-logos">
        <div class="logo">
        <img src="../../assets/icon/3.png" width="25" height="25">
        </div>
        <a  href="clientes.php" class="title-menu" class="fa fa-sign-out fa-fw" style="color: #ffffff;">CLIENTES</a>
    </div>

    <div style="font-size:12px;" class="contenedor-logos">
        <div class="logo">
        <img src="../../assets/icon/2.png" width="25" height="25">
        </div>
        <a  href="factura.php" class="title-menu" class="fa fa-sign-out fa-fw" style="color: #ffffff;">REGISTRAR FACTURA</a>
    </div>

    <div style="font-size:12px;" class="contenedor-logos">
        <div class="logo">
        <img src="../../assets/icon/22.png" width="25" height="25">
        </div>
        <a  href="consultar_f.php" class="title-menu" class="fa fa-sign-out fa-fw" style="color: #ffffff;">CONSULTAR FACTURAS</a>
    </div>

    <div style="font-size:12px;" class="contenedor-logos">
        <div class="logo">
        <img src="../../assets/icon/21.png" width="25" height="25">
        </div>
        <a  href="Precios.php" class="title-menu" class="fa fa-sign-out fa-fw" style="color: #ffffff;">PRECIOS</a>
    </div>

    <div style="font-size:12px;" class="contenedor-logos">
        <div class="logo">
        <img src="../../assets/icon/user_edit.png" width="25" height="25">
        </div>
        <a  href="usuarios.php" class="title-menu" class="fa fa-sign-out fa-fw" style="color: #ffffff;">USUARIOS</a>
    </div>


    <div style="font-size:12px;" class="contenedor-logos">
        <div class="logo">
        <img src="../../assets/icon/4.png" width="25" height="25">
        </div>
        <a  href="home.php" class="title-menu" class="fa fa-sign-out fa-fw" style="color: #ffffff;">PROXIMAMENTE...</a>
    </div>

</div>

