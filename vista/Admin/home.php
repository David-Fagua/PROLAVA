<!--HTML-->

<!DOCTYPE html>
<html lang="es">
<head>
<title>Admin</title>


<?php include '../partials/headA.php';?>

<?php include '../partials/menuA.php';?>


<main>

  </--formulario--/>

  <center>

      <?php 
      include '../factura/Invoice.php';
      $invoice = new Invoice();
      $invoice->checkLoggedIn();
      ?>

      <div id="wrapper" class="Factura">

        <h1>
        Menu
        </h1>

      <center>

        <div class="col-md-10">

          <form action="clientes.php" class="list-group list-group-flush">
            <button type="submit" class="btn btn-dark" role="button">
            <img src="../../assets/icon/3.png" width="30" height="30">
            &nbsp;
            <a style="color: #ffffff;">
              CLIENTES
            </a>
            </button>
          </form>

          &nbsp;

          <form role="form" action="factura.php" method="post" class="list-group list-group-flush">
            <button type="submit" class="btn btn-dark" role="button">
            <img src="../../assets/icon/2.png" width="30" height="30">
            &nbsp;
            <a style="color: #ffffff;">
              CREAR FACTURA
            </a>
            </button>
          </form>

          &nbsp;

          <form role="form" action="consultar_f.php" method="post" class="list-group list-group-flush">
            <button type="submit" class="btn btn-dark" role="button">
            <img src="../../assets/icon/22.png" width="30" height="30">
            &nbsp;
            <a style="color: #ffffff;">
              CONSULTAR FACTURAS
            </a>
            </button>
          </form>

          &nbsp;

          <form role="form" action="productos.php" method="post" class="list-group list-group-flush">
            <button type="submit" class="btn btn-dark" role="button">
              <img src="../../assets/icon/21.png" width="30" height="30">
              &nbsp;
              <a style="color: #ffffff;">
                PRODUCTOS
              </a>
            </button>
          </form>
        </div>
      </center>
    </div>
  </center>

</main>


<?php include '../partials/footerA.php';?>