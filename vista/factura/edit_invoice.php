<?php 
session_start();
include '../factura/Invoice.php';
$invoice = new Invoice();
$invoice->checkLoggedIn();
if(!empty($_POST['companyName']) && $_POST['companyName'] && !empty($_POST['invoiceId']) && $_POST['invoiceId']) {	
	$invoice->updateInvoice($_POST);	
	header("../admin/home.php");	
}
if(!empty($_GET['update_id']) && $_GET['update_id']) {
	$invoiceValues = $invoice->getInvoice($_GET['update_id']);		
	$invoiceItems = $invoice->getInvoiceItems($_GET['update_id']);		
}
?>

<!--HTML-->

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<script src="../../assets/js/invoice.js"></script>
<link href="../../assets/css/style.css" rel="stylesheet">

<title>Editar</title>


<!--Editar Factura :v-->

<div class="container content-invoice">
    	<form action="" id="invoice-form" method="post" class="invoice-form" role="form" novalidate> 
	    	<div class="load-animate animated fadeInUp">

		    	<div class="row">
                
	                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
	                    <center>
	                        <h2 style="color: #000000;">Editar Factura</h2>
	                      </center>

	                </div>                  

	            </div>
				<div class="row"> 

					<div class="form-row" class="form-group col-md-4">

		      			<div class="form-group col-md-4">
							<h4 class="form-group col-md-4">Nombre</h4>
							<input value="<?php echo $invoiceValues['order_receiver_name']; ?>" type="text" class="form-control" name="companyName" id="companyName" placeholder="Nombre de Empresa" autocomplete="off">
						</div>
						<div class="form-group col-md-4">
							<h4 class="form-group col-md-4">Celular</h4>
							<textarea class="form-control" rows="3" name="celular" id="celular" placeholder="Su Dirección"><?php echo $invoiceValues['celular']; ?></textarea>
						</div>
						<div class="form-group col-md-4">
							<h4 class="form-group col-md-4">Dirección</h4>
							<textarea class="form-control" rows="3" name="address" id="address" placeholder="Su Dirección"><?php echo $invoiceValues['order_receiver_address']; ?></textarea>
						</div>
						
		      		</div>
		      	</div>
		      	<div class="row">
		      		<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
						<table class="table table-bordered table-hover" id="invoiceItem">	
							<tr>
								<th width="2%"><input id="checkAll" class="formcontrol" type="checkbox"></th>
							<th width="15%">Prod. No</th>
							<th width="38%">Nombre Producto</th>
							<th width="15%">Cantidad</th>
							<th width="15%">Precio</th>								
							<th width="15%">Total</th>
							</tr>
							<?php 
							$count = 0;
							foreach($invoiceItems as $invoiceItem){
								$count++;
							?>								
							<tr>
								<td><input class="itemRow" type="checkbox"></td>
								<td><input type="text" value="<?php echo $invoiceItem["item_code"]; ?>" name="productCode[]" id="productCode_<?php echo $count; ?>" class="form-control" autocomplete="off"></td>
								<td><input type="text" value="<?php echo $invoiceItem["item_name"]; ?>" name="productName[]" id="productName_<?php echo $count; ?>" class="form-control" autocomplete="off"></td>			
								<td><input type="number" value="<?php echo $invoiceItem["order_item_quantity"]; ?>" name="quantity[]" id="quantity_<?php echo $count; ?>" class="form-control quantity" autocomplete="off"></td>
								<td><input type="number" value="<?php echo $invoiceItem["order_item_price"]; ?>" name="price[]" id="price_<?php echo $count; ?>" class="form-control price" autocomplete="off"></td>
								<td><input type="number" value="<?php echo $invoiceItem["order_item_final_amount"]; ?>" name="total[]" id="total_<?php echo $count; ?>" class="form-control total" autocomplete="off"></td>
								<input type="hidden" value="<?php echo $invoiceItem['order_item_id']; ?>" class="form-control" name="itemId[]">
							</tr>	
							<?php } ?>		
						</table>
		      		</div>
		      	</div>
		      	<div class="row">
		      		<div class="col-xs-12 col-sm-3 col-md-3 col-lg-3">
		      			<button class="btn btn-danger delete" id="removeRows" type="button">- Eliminar</button>
		      			<button class="btn btn-success" id="addRows" type="button">+ Añadir</button>
		      		</div>
		      	</div>
		      	<div class="row">

					<!--Totales-->

					<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">
		      			<h3>Notas: </h3>
		      			<div class="form-group">
							<textarea class="form-control txt" rows="5" name="notes" id="notes" placeholder="Your Notes"><?php echo $invoiceValues['note']; ?></textarea>
						</div>
						<br>
						<div class="form-group">
							<input type="hidden" value="<?php echo $_SESSION['userid']; ?>" class="form-control" name="userId">
							<input type="hidden" value="<?php echo $invoiceValues['order_id']; ?>" class="form-control" name="invoiceId" id="invoiceId">
			      			<input data-loading-text="Updating Invoice..." type="submit" name="invoice_btn" value="Actualizar factura" class="btn btn-success submit_btn invoice-save-btm">
			      		</div>
						
		      		</div>

					<div class="col-xs-12 col-sm-2 col-md-2 col-lg-2">
						<h2 >Atendido</h2>
						  
						<p><?php echo $_SESSION['user']; ?><br>	</p>
					</div>

		      		<div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
						<form role="form"  method="post">

							<div class="form-group row">
								<label class="col-sm-4 col-form-label">Subtotal: &nbsp;</label>
								<div class="col-sm-8">
									<input value="<?php echo $invoiceValues['order_total_before_tax']; ?>" type="number" class="form-control" name="subTotal" id="subTotal" placeholder="Subtotal">
								</div>
							</div>

							<div class="form-group row">
								<label class="col-sm-4 col-form-label">% IVA: &nbsp;</label>
								<div class="col-sm-8">
									<input value="<?php echo $invoiceValues['order_tax_per']; ?>" type="number" class="form-control" name="taxRate" id="taxRate" placeholder="Tax Rate">
								</div>
							</div>

							<div class="form-group row">
								<label class="col-sm-4 col-form-label">Total IVA: &nbsp;</label>
								<div class="col-sm-8">
									<input value="<?php echo $invoiceValues['order_total_tax']; ?>" type="number" class="form-control" name="taxAmount" id="taxAmount" placeholder="Tax Amount">
								</div>
							</div>	

							<div class="form-group row">
								<label class="col-sm-4 col-form-label">Total: &nbsp;</label>
								<div class="col-sm-8">
									<input value="<?php echo $invoiceValues['order_total_after_tax']; ?>" type="number" class="form-control" name="totalAftertax" id="totalAftertax" placeholder="Total">
								</div>
							</div>

							<div class="form-group row">
								<label class="col-sm-4 col-form-label">Amount Paid: &nbsp;</label>
								<div class="col-sm-8">
									<input value="<?php echo $invoiceValues['order_amount_paid']; ?>" type="number" class="form-control" name="amountPaid" id="amountPaid" placeholder="Amount Paid">
								</div>
							</div>
							
							<div class="form-group row">
								<label class="col-sm-4 col-form-label">Amount Due: &nbsp;</label>
								<div class="col-sm-8">
									<input value="<?php echo $invoiceValues['order_total_amount_due']; ?>" type="number" class="form-control" name="amountDue" id="amountDue" placeholder="Amount Due">
								</div>
							</div>

						</span>
					</div>
		      	</div>
		      	<div class="clearfix"></div>		      	
	      	</div>
		</form>			
    </div>
</div>	
