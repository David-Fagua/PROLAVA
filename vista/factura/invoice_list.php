<?php 
session_start();
include '../factura/Invoice.php';
$invoice = new Invoice();
$invoice->checkLoggedIn();
?>


<div class="container">		

  <table id="data-table" class="table table-condensed table-striped">
    <thead>
      <tr>
        <th width="7%">Fac. No.</th>
        <th width="15%">Fecha Creación</th>
        <th width="35%">Cliente</th>
        <th width="15%">Fatura Total</th>
        <th width="3%"></th>
        <th width="3%"></th>
        <th width="3%"></th>
      </tr>
    </thead>
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
            <td><a href="../factura/edit_invoice.php?update_id='.$invoiceDetails["order_id"].'"  title="Editar Factura"><div class="btn btn-primary"><span class="fa fa-pencil-square-o"></span></div></a></td>
            <td><a href="#" id="'.$invoiceDetails["order_id"].'" class="deleteInvoice"  title="Borrar Factura"><div class="btn btn-danger"><span class="fa fa-trash-o fa-lg"></span></div></a></td>
          </tr>
        ';
    }       
    ?>
  </table>	
</div>	

</--formulario--/>


  <div class="border border-light p-5">
                  
    <div class="row">
      <form role="form" action="../factura/create_invoice.php" method="post">
        <button href="login.php" type="submit" class="btn btn-dark" role="button">
        <img src="../../assets/icon/3.png" width="40" height="40">
        <a style="color: #ffffff;">
          CLIENTES
        </a>
        </button>
      </form>

      &nbsp;

      <form role="form" action="../factura/edit_invoice.php" method="post">
        <button href="login.php" type="submit" class="btn btn-dark" role="button">
        <img src="../../assets/icon/21.png" width="40" height="40">
        <a style="color: #ffffff;">
          PRECIOS
        </a>
        </button>
      </form>

      &nbsp;

      <form role="form" action="../factura/invoice_list.php" method="post">
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