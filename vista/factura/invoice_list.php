

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


      <div class="container mt-12">
        <div class="row"> 
                
          <div class="col-md-12">
            <table id="data-table" class="table table-condensed table-striped">
              <thead>
                <tr>
                  <th width="5%">Fac No.</th>
                  <th width="15%">Fecha Creación</th>
                  <th width="35%">Cliente</th>
                  <th width="15%">Factura Total</th>
                  <th width="5%"></th>
                  <th width="5%"></th>
                  <th width="5%"></th>
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
                        <td><a href="actualizar.php?update_id='.$invoiceDetails["order_id"].'"  title="Editar Factura"><div class="btn btn-primary"><span class="fa fa-pencil-square-o"></span></div></a></td>
                        <td><a href="#" id="'.$invoiceDetails["order_id"].'" class="deleteInvoice"  title="Borrar Factura"><div class="btn btn-danger"><span class="fa fa-trash-o fa-lg"></span></div></a></td>
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