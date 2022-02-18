

<!--Editar Factura :v-->

<center>

  <?php 
    include '../factura/Invoice.php';
    $invoice = new Invoice();
    $invoice->checkLoggedIn();
  ?>
  
  <div id="wrapper" class="Factura">

    <h1>
    Facturas
    </h1>
    
    <form role="form" action="factura.php" class="col-md-4" method="post" class="list-group list-group-flush">

      <tbody>
      <!--<php
      $host = "localhost"; /* Nombre del servidor */
      $user = "root"; /* usuario Mysql*/
      $password = ""; /* Password */
      $dbname = "datapro"; /* Nombre Base de Datos */
      $con = mysqli_connect($host, $user, $password,$dbname);
      // Revisamos la conexion
      if (!$con) {
        die("Conexion fallida: " . mysqli_connect_error());
      }

      “SELECT MAX(id_order) AS id FROM factura_orden”  
      ?>-->
      </tbody>


      <button type="submit" class="btn btn-success" role="button">
        <img src="../../assets/icon/22.png" width="30" height="30">
        &nbsp;
        <a style="color: #ffffff;">
          Nueva Factura
        </a>
      </button>
      
    </form>

      <div style="height: 480px;width: 1000px; overflow-y: auto; " class="container mt-12">
        <div class="row"> 
                
          <div class="col-md-12">
            <table id="data-table" class="table table-condensed table-striped">
              <thead class="table-success table-striped">
                <tr>
                  <th width="10%">Fac No.</th>
                  <th width="15%">Fecha Creación</th>
                  <th width="30%">Cliente</th>
                  <th width="15%">Factura Total</th>
                  <th width="5%"></th>
                  <th width="5%"></th>
                  <!--<th width="5%"></th>-->
                </tr>
              </thead>
              <tbody>
                <?php       
                $invoiceList = $invoice->getInvoiceList();
                foreach($invoiceList as $invoiceDetails){
                    $invoiceDate = date("d/M/Y, H:i:s", strtotime($invoiceDetails["order_date"]));
                    echo '
                      <tr>
                        <td>'.$invoiceDetails["order_id"].'</td>
                        <td>'.$invoiceDate.'</td>
                        <td>'.$invoiceDetails["order_receiver_name"].'</td>
                        <td>'.$invoiceDetails["order_total_after_tax"].'</td>
                        <td><a href="../factura/print_invoice.php?invoice_id='.$invoiceDetails["order_id"].'" title="Imprimir Factura"><div class="btn btn-primary"><span class="fa fa-print"></span></div></a></td>
                        <td><a href="actualizar.php?update_id='.$invoiceDetails["order_id"].'"  title="Editar Factura"><div class="btn btn-warning"><span class="fa fa-pencil-square-o"></span></div></a></td>
                        <!--<td><a href="#" id="'.$invoiceDetails["order_id"].'" class="deleteInvoice"  title="Borrar Factura"><div class="btn btn-danger"><span class="fa fa-trash-o fa-lg"></span></div></a></td>-->
                      </tr>
                    ';
                }       
                ?>
              </tbody>      
            </table>
          </div>
        </div>
      </div>
    </div>
  </div>
</center>

<style type="text/css"> 
    thead tr th { 
        position: sticky;
        top: 0;
        z-index: 10;
        background-color: #3365A6;
    }
</style>