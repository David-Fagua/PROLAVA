
<!--Navbar Superior-->
<header style="background-color: #000000;" >

    <div class="icon__menu" style="background-color: #ffffff;">
        <i class="fa fa-caret-square-o-right fa-2x" id="btn_open">
        </i>
    </div>
    
    <li >
        <a class="badge badge-info" style="background-color: #F2E63D;">
            <?php echo $_SESSION["usuario"]["privilegio"] == 0 ? 'Admin' : 'Usuario'; ?>
        </a>
    </li>


</header>

    <!--Navbar Izquierdo-->

    <div class="menu__side" id="menu_side" >

        <div class="name__page">
            <img src="../../assets/icon/lava.png" width="30" height="30" alt="">
            &nbsp;

            <h4><img src="../../assets/icon/Logo.png" width="196" height="47" alt="Lavaseco"></h4>
        </div>

        <div class="options__menu"> 

            <a href="home.php">
                <div class="option">
                    <i class="fas fa-home" title="Inicio"></i>
                    <h6>INICIO</h6>
                </div>
            </a>
            
            <a href="factura.php">
                <div class="option">
                    <i class="fa fa-ticket" title="Crear Factura"></i>
                    <h6>CREAR FACTURA</h6>
                </div>
            </a>

            <a href="consultar_f.php">
                <div class="option">
                    <i class="fa fa-search" title="Consultar Facturas"></i>
                    <h6>CONSULTAR FACTURAS</h6>
                </div>
            </a>

            <a href="precios.php">
                <div class="option">
                    <i class="fa fa-diamond" title="Precios"></i>
                    <h6>PRECIOS</h6>
                </div>
            </a>

            <a href="clientes.php">
                <div class="option">
                    <i class="fa fa-users" title="Clientes"></i>
                    <h6>CLIENTES</h6>
                </div>
            </a>

            <a href="usuarios.php">
                <div class="option">
                    <i class="fa fa-user" title="Usuarios"></i>
                    <h6>USUARIOS</h6>
                </div>
            </a>

            <a href="../cerrar_sesion.php" class="selected">
                <div class="option">
                    <i style="color: #F2E63D;" class="fa fa-sign-in" title="Cerrrar Sesión"></i>
                    <h6 style="color: #F2E63D;">CERRAR SESIÓN</h6>
                </div>
            </a>

        </div>

    </div>