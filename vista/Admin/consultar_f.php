<!--HTML-->

<!DOCTYPE html>
<html lang="es">
<head>
<title>Consultar Factura</title>


<?php include '../partials/headA.php';?>

<?php include '../partials/menuA.php';?>

<br>
<br>

<main>

</--formulario--/>

<?php 
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

</main>


<?php include '../partials/footerA.php';?>
