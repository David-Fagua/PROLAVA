<!--HTML-->

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<script src="../../assets/js/invoice.js"></script>


<!--La factura-->

<div class="container content-invoice">
    <form action="" id="invoice-form" method="post" class="invoice-form" role="form" novalidate> 
        <div class="load-animate animated fadeInUp">

            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                <center>
                    <h1 style="color: #000000;">Crear Factura</h1>
                </center>

            </div>
            
            <input id="currency" type="hidden" value="$">
            
            <!--Datos cliente-->

            <div class="row">
                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                    <table class="table table-bordered table-hover">   
                        <tr>
                            <th >
                                <h3 style="color: #000000;">Datos del Cliente</h3>
                            </th>
                        </tr>                       
                    </table>
                </div>
            </div>  
                
            <div class="form-row" >
            
                <div class="form-group col-md-4">
                    <h4 class="form-group col-md-4">Nombre</h4>
                    <input type="text" class="form-control" name="companyName" id="companyName" placeholder="Nombre" autocomplete="off" required>
                </div>
                <div class="form-group col-md-4">
                    <h4 class="form-group col-md-4">Celular</h4>
                    <input type="number" class="form-control" name="celular" id="celular" placeholder="Celular" autocomplete="off" required>
                </div>
                <div class="form-group col-md-4">
                    <h4 class="form-group col-md-4">Dirección</h4>
                    <textarea class="form-control" rows="3" name="address" id="address" placeholder="Su dirección"></textarea>
                </div>
                
            </div>
        </div>

        <!--Registrar factura-->

        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                <table class="table table-bordered table-hover" id="invoiceItem">   
                    <tr>
                        <th width="1%"><input id="checkAll" class="formcontrol" type="checkbox"></th>
                        <th width="5%">Prod. No</th>
                        <th width="40%">Nombre Producto</th>
                        <th width="5%">Cantidad</th>
                        <th width="12%">Precio</th>                             
                        <th width="12%">Total</th>
                    </tr>                           
                    <tr>
                        <td><input class="itemRow" type="checkbox"></td>
                        <td><input type="text" name="productCode[]" id="productCode_1" class="form-control" autocomplete="off"></td>
                        <td>
                            <select type="text" name="productName[]" class="form-control"  id="productName_1" class="form-control" autocomplete="off">
                                <?php  
                                include("../../logica/conexion.php");
                                $con=conectar();
                            
                                $sql="SELECT *  FROM productos";
                                $query=mysqli_query($con,$sql);
                                while ($row = mysqli_fetch_array($query)){
                                echo '<option value="'.$row['prenda'].'">'.$row['prenda'].'</option>';
                                }
                                ?>
                            </select>
                        </td>            
                        <td><input type="number" name="quantity[]" id="quantity_1" class="form-control quantity" autocomplete="off"></td>
                        <td><input type="number" name="price[]" id="price_1" class="form-control price" autocomplete="off"></td>
                        <td><input type="number" name="total[]" id="total_1" class="form-control total" autocomplete="off"></td>
                    </tr>                       
                </table>
            </div>
        </div>

        <!--Botones para borrar y agregar productas-->

        <div class="row">
            <div class="col-xs-12 col-sm-3 col-md-3 col-lg-3">
                <button class="btn btn-danger delete" id="removeRows" type="button">- Borrar</button>
                <button class="btn btn-success" id="addRows" type="button">+ Agregar Más</button>
            </div>
        </div>

        <!--Notas-->

        <div class="row">
               
            <div class="col-xs-12 col-sm-5 col-md-5 col-lg-5">
                <h3>Notas: </h3>
                <div class="form-group">
                    <textarea class="form-control txt" rows="5" name="notes" id="notes" placeholder="Notas"></textarea>
                </div>
                                
            </div>

            <!--espacio-->

            <div class="col-xs-12 col-sm-3 col-md-3 col-lg-3">
                <div>
                    <label class="control-label" for="text">Fecha de Entrega</label>
                    <input type="date" name="fecha_entrega" class="form-control" placeholder="AAAA/MM/DD" >
                </div>
                <br>
                <div class="form-group">
                    <h4 class="form-group">Dirección de Entrega</h4>
                    <textarea class="form-control" rows="3" name="dir_entrega" id="dir_entrega" placeholder="Su dirección"></textarea>
                </div>
            </div>

            <!--Totales-->

            <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">
                

                    <div class="myform-bottom">
                        <form role="form"  method="post">

                            <div class="form-group row">
                                <label class="col-sm-4 col-form-label">Subtotal: &nbsp;</label>
                                <div class="col-sm-8">
                                    <input value="" type="number" class="form-control" name="subTotal" id="subTotal" placeholder="Subtotal">
                                </div>
                            </div>

                            <div class="form-group row">
                                <label class="col-sm-4 col-form-label">IVA: &nbsp;</label>
                                <div class="col-sm-8">
                                    <input value="" type="number" class="form-control" name="taxRate" id="taxRate" placeholder="IVA">
                                </div>
                            </div>

                            <div class="form-group row">
                                <label class="col-sm-4 col-form-label">Total IVA: &nbsp;</label>
                                <div class="col-sm-8">
                                    <input value="" type="number" class="form-control" name="taxAmount" id="taxAmount" placeholder="Total IVA">
                                </div>
                            </div>                          
                            <div class="form-group row">
                                <label class="col-sm-4 col-form-label">Total: &nbsp;</label>
                                <div class="col-sm-8">
                                    <input value="" type="number" class="form-control" name="totalAftertax" id="totalAftertax" placeholder="Total">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-sm-4 col-form-label">Cantidad pagada: &nbsp;</label>
                                <div class="col-sm-8">
                                    <input value="" type="number" class="form-control" name="amountPaid" id="amountPaid" placeholder="Cantidad pagada">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-sm-4 col-form-label currency">Cantidad debida: &nbsp;</label>
                                <div class="col-sm-8">
                                    <input value="" type="number" class="form-control" name="amountDue" id="amountDue" placeholder="Cantidad debida">
                                </div>
                            </div>

                            <div class="form-group">
                                <input type="hidden" value="<?php echo $_SESSION['userid']; ?>" class="form-control" name="userId">
                                <input data-loading-text="Guardando factura..." type="submit" name="invoice_btn" value="Guardar Factura" class="btn btn-success submit_btn invoice-save-btm">                       
                            </div>

                        </form>
                    </div>

                </span>
            </div>
        </div>

            <div class="clearfix"></div>                
            </div>

    </form>         
</div>

<table width="100%" border="1" cellpadding="5" cellspacing="0">
	//NOMBRE DE LA EMPRESA
	<tr>
		<td colspan="2" align="center">
			<b style="font-size:65Spx">LAVASECO CUNDINAMARCA</b><br/> 
			<b style="font-size:35Spx">Cels. 310 278 5726 - 311 555 1523</b><br/>
			<b style="font-size:35Spx">Calle 9 #7-24 Barrio Alcaparros Madrid</b>
		</td>
		
	</tr>

	//N factura

	<tr>
		<td colspan="2" align="center" style="font-size:260Spx">
			<b>
			'.$invoiceValues['order_id'].'
			</b>
		</td>
	</tr>

	//Datos cliente

	<tr>
		<td colspan="2"  style="font-size:40Spx">
			
			Fecha : '.$invoiceDate.'<br />
			Cliente: <b style="font-size:50Spx">'.$invoiceValues['order_receiver_name'].'</b><br /> 
			Celular: '.$invoiceValues['celular'].'<br /> 
			Dirección : '.$invoiceValues['order_receiver_address'].'<br />
		
		</td>
	</tr>

	//Contenido factura
	
	</tr>
	</table>
	<br />
	<table style="font-size:42px" width="100%" border="1" cellpadding="5" cellspacing="0">
	<tr>
		<th align="left">Nombre</th>
		<th align="left">Cantidad</th>
		<th align="left">Precio</th> 
	</tr>';

$count = 0;   
foreach($invoiceItems as $invoiceItem){
	$count++;
	$output .= '
	
	<tr>
	<td align="left">'.$invoiceItem["item_name"].'</td>
	<td align="left">'.$invoiceItem["order_item_quantity"].'</td>
	<td align="left">'.$invoiceItem["order_item_final_amount"].'</td>   
	</tr>';
}

$output .= '
	<tr>
	<td align="right" colspan="2"><b>Sub Total</b></td>
	<td align="left"><b>'.$invoiceValues['order_total_before_tax'].'</b></td>
	</tr>

	<tr>
	<td align="right" colspan="2">Monto Pagado:</td>
	<td align="left">'.$invoiceValues['order_amount_paid'].'</td>
	</tr>

	<tr>
	<td align="right" colspan="2"><b>PENDIENTE CANCELAR:</b></td>
	<td align="left"><b>'.$invoiceValues['order_total_amount_due'].'</b></td>
	</tr>
	
	</table>
	<br />
	<table style="font-size:30px" width="100%" border="1" cellpadding="5" cellspacing="0">
	<tr>';

	$output .= '<table width="100%" border="1" cellpadding="5" cellspacing="0">
	//Fin

	<tr>
		<td colspan="2" " style="font-size:30Spx">
			<b style="font-size:32Spx">Detalles</b><br />'.$invoiceValues['note'].'<br /> 
		</td>
	</tr>';
	

$output .= '<table width="100%" border="1" cellpadding="5" cellspacing="0">
	//Fin

	<tr>
		<td colspan="2"  style="font-size:50Spx">
			
			Atendido por : <b style="font-size:60Spx">'.$_SESSION['user'].'</b><br />
			Para entregar: <b style="font-size:60Spx">'.$invoiceValues['fecha_entrega'].'</b><br />
			Dirección de entrega : '.$invoiceValues['dir_entrega'].'<br />
		
		</td>
	</tr>


	<tr>
		<td colspan="2" align="center" style="font-size:30Spx">
			<b style="font-size:32Spx">LAS ANOTACIONES MANUALES NO TENDRAN VALIDEZ</b><br /> 
			Recuerda que entre más grande sea el HTML y las hojas de estilo, se llevará más tiempo renderizar el documento a PDF.

			La ventaja de todo esto es que puedes usar estilos bonitos y usar HTML para generar un PDF, usando un lenguaje que ya sabes, en lugar de aprender a usar la librería que crea PDF de manera nativa.

			No olvides que además de mostrar directamente el documento puedes forzar su descarga o guardarlo de manera local.
			
			<br /> 
		</td>
	</tr>
	
	</tr>
	</table>
	<br />
	<table style="font-size:42px" width="100%" border="1" cellpadding="5" cellspacing="0">
	>';
	
$output .= '
	</table>
	</td>
	</tr>
	</table>';