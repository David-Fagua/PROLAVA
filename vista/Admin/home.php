<!--HTML-->

<!DOCTYPE html>
<html lang="es">
<head>
<title>Admin</title>


<?php include '../partials/headA.php';?>

<?php include '../partials/menuA.php';?>


<br></br>

<div id="page-wrapper">

  <!--info--> 

  </--formulario--/>


  <div class="border border-light p-5">
                  
    <div class="row">
      <form role="form" action="clientes.php" method="post">
        <button href="login.php" type="submit" class="btn btn-dark" role="button">
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
        <button href="login.php" type="submit" class="btn btn-dark" role="button">
        <img src="../../assets/icon/22.png" width="40" height="40">
        <a style="color: #ffffff;">
          CONSULTAR FACTURAS
        </a>
        </button>
      </form>

      &nbsp;

      <form role="form" action="precios.php" method="post">
        <button href="login.php" type="submit" class="btn btn-dark" role="button">
        <img src="../../assets/icon/21.png" width="40" height="40">
        <a style="color: #ffffff;">
          PRECIOS
        </a>
        </button>
      </form>

    </div>

  </div>

</div>


<?php include '../partials/footerA.php';?>