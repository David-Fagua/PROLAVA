

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<script src="js/invoice.js"></script>
<link href="css/style.css" rel="stylesheet">    

<!--nav-->

<link href="../../assets/css/index_style.css" rel="stylesheet" type="text/css">


                <!-- fixed-top-->
                <nav  class="header-navbar navbar-expand-sm navbar navbar-with-menu navbar-light bg-blue bg-lighten-5 border-blue border-lighten-4">
                    <div class="navbar-wrapper">
                        <div class="navbar-header">
                            <ul class="nav navbar-nav mr-auto">
                                <li class="nav-item mobile-menu d-md-none float-left">
                                    <button class="nav-link menu-toggle hamburger hamburger--arrow js-hamburger is-active"><span class="hamburger-box"></span><span class="hamburger-inner"></span></button>
                                </li>
                                <li class="nav-item">
                                    <a href="index.html" class="navbar-brand nav-link"><img src="../../../app-assets/images/logo/logo-dark.png"></a>
                                </li>
                                <li class="nav-item d-md-none float-right"><a data-toggle="collapse" data-target="#navbar-mobile" class="nav-link open-navbar-container collapsed" aria-expanded="false"><i class="ft-ellipsis-h pe-2x icon-rotate-right"></i></a></li>
                            </ul>
                        </div>
                        <div class="navbar-container content">
                            <div id="navbar-mobile" class="collapse navbar-collapse">
                                <ul class="nav navbar-nav mr-auto">
                                    <li class="nav-item"><a class="nav-link active" href="#">Active</a></li>                                    
                                </ul>
                                <ul class="nav navbar-nav float-right">
                                    <li class="nav-item"><a class="nav-link" href="#">Link</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </nav>
                <!--/ fixed-top-->


<!--La factura-->

<div class="container content-invoice">
    <form action="" id="invoice-form" method="post" class="invoice-form" role="form" novalidate> 
        <div class="load-animate animated fadeInUp">
            <div class="row">
                
                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                <center>
            <h2 style="color: #000000;">Factura</h2>
          </center>

                </div>		    		

            </div>
            <input id="currency" type="hidden" value="$">
            
            <!--Datos cliente-->
                
            <div class="form-row" >
                <div class="form-group col-md-3">
                    <h3>Datos del Cliente</h3>
                </div>
            
                <div class="form-group col-md-3">
                    <input type="text" class="form-control" name="companyName" id="companyName" placeholder="Nombre" autocomplete="off">
                </div>
                <div class="form-group col-md-3">
                    <input type="text" class="form-control" name="celular" id="celular" placeholder="Celular" autocomplete="off">
                </div>
                <div class="form-group col-md-3">
                    <textarea class="form-control" rows="3" name="address" id="address" placeholder="Su dirección"></textarea>
                </div>
                
            </div>
        </div>

        <!--Registrar factura-->

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
                    <tr>
                        <td><input class="itemRow" type="checkbox"></td>
                        <td><input type="text" name="productCode[]" id="productCode_1" class="form-control" autocomplete="off"></td>
                        <td><input type="text" name="productName[]" id="productName_1" class="form-control" autocomplete="off"></td>			
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
            <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">
                <h3>Notas: </h3>
                <div class="form-group">
                    <textarea class="form-control txt" rows="5" name="notes" id="notes" placeholder="Notas"></textarea>
                </div>
                <br>
                <div class="form-group">
                    <input type="hidden" value="<?php echo $_SESSION['userid']; ?>" class="form-control" name="userId">
                    <input data-loading-text="Guardando factura..." type="submit" name="invoice_btn" value="Guardar Factura" class="btn btn-success submit_btn invoice-save-btm">						
                </div>
            </div>

            <!--espacio-->

            <div class="col-xs-12 col-sm-2 col-md-2 col-lg-2">
            </div>

            <!--Totales-->

            <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
                

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

                        </form>
                    </div>

                </span>
            </div>
        </div>

            <div class="clearfix"></div>		      	
            </div>

    </form>			
</div>

<?php include('footer.php');?>