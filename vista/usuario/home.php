<!--*********************************************************
* Sistema PROLAVA                                           *
*                                                           *
* Fecha:    2022-01-25                                      *
* Autor:  David Fagua                                       *
* Contacto:  fagua99@gmail.com                              *
************************************************************-->

<!--HTML-->

<!DOCTYPE html>
<html lang="es">
<head>
<title>Admin</title>


<?php include '../partials/headU.php';?>

<?php include '../partials/menuU.php';?>

<main>

  </--formulario--/>


  <div class="border border-light p-5">
                  
    <div class="row">
      <form role="form" action="clientes.php" method="post">
        <button href="clientes.php" type="submit" class="btn btn-dark" role="button">
        <img src="../../assets/icon/3.png" width="40" height="40">
        <a style="color: #ffffff;">
          CLIENTES
        </a>
        </button>
      </form>

      &nbsp;

      <form role="form" action="factura.php" method="post">
        <button href="factura.php" type="submit" class="btn btn-dark" role="button">
        <img src="../../assets/icon/2.png" width="40" height="40">
        <a style="color: #ffffff;">
          REGISTRAR FACTURA
        </a>
        </button>
      </form>

      &nbsp;

      <form role="form" action="consultar_f.php" method="post">
        <button href="consultar_f.php" type="submit" class="btn btn-dark" role="button">
        <img src="../../assets/icon/22.png" width="40" height="40">
        <a style="color: #ffffff;">
          CONSULTAR FACTURAS
        </a>
        </button>
      </form>

      &nbsp;

      <form role="form" action="productos.php" method="post">
        <button href="precios.php" type="submit" class="btn btn-dark" role="button">
        <img src="../../assets/icon/21.png" width="40" height="40">
        <a style="color: #ffffff;">
          PRODUCTOS
        </a>
        </button>
      </form>

    </div>

  </div>

</main>

<?php include '../partials/footerU.php';?>