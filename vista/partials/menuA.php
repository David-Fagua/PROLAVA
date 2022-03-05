<!--*********************************************************
* Sistema PROLAVA                                           *
*                                                           *
* Fecha:    2022-01-25                                      *
* Autor:  David Fagua                                       *
* Contacto:  fagua99@gmail.com                              *
************************************************************-->

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
            <img src="../../assets/icon/lava.png" width="24" height="24" alt="">
            &nbsp;
            &nbsp;
            &nbsp;
            <h5><?php echo $_SESSION['user']; ?></h5>
        </div>

        <div class="options__menu"> 

            <a href="home.php">
                <div class="option">
                    <i style="color: #FF8C00;" class="fas fa-home" title="Inicio"></i>
                    <h6>INICIO</h6>
                </div>
            </a>
            
            <a href="factura.php">
                <div class="option">
                    <i style="color: #7CFC00;" class="fa fa-plus" title="Crear Factura"></i>
                    <h6>CREAR FACTURA</h6>
                </div>
            </a>

            <a href="consultar_f.php">
                <div class="option">
                    <i style="color: #FFFF00;" class="fa fa-search" title="Consultar Facturas"></i>
                    <h6>CONSULTAR FACTURAS</h6>
                </div>
            </a>

            <a href="productos.php">
                <div class="option">
                    <i style="color: #FFD700;" class="fa fa-barcode" title="Productos"></i>
                    <h6>PRODUCTOS</h6>
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
                    <i style="color: #8B0000;" class="fa fa-sign-in" title="Cerrrar Sesión"></i>
                    <h6 style="color: #F2E63D;">CERRAR SESIÓN</h6>
                </div>
            </a>

        </div>

    </div>