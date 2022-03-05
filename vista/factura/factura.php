<!--*********************************************************
* Sistema PROLAVA                                           *
*                                                           *
* Fecha:    2022-01-25                                      *
* Autor:  David Fagua                                       *
* Contacto:  fagua99@gmail.com                              *
************************************************************-->

<!DOCTYPE html>
<html lang="es">
<head>
<title>FACTURA</title>

<title>baulphp : Sistema facturación PHP & MySQL</title>

<br/>
<br/>
<br/>

<!--Navbar-->

<div>
  <nav class="navbar navbar-light navbar-expand-lg fixed-top" style="background-color: #021E73;">
    <a href="index.php" class="navbar-brand" >
      <img src="../../assets/icon/Logo.png" width="196" height="47" alt="Lavaseco">
    </a>
    <a href="index.php" class="navbar-brand" style="color: #F2E63D;">LAVASECO</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav mr-auto">

        <a href="index.php" class="nav-link" style="color: #BF0A19;"></a>
  
      </li>
    </ul>

    <!--Desplegable-->

    <ul class="nav navbar-left navbar-top-links">
      <form role="form" action="login.php" method="post">
        <li class="dropdown navbar-inverse">
          <button href="index.php" role="button" class="btn btn-link" >
            <a >
              <img src="../../assets/icon/lava.png" width="40" height="40">
            </a>
          </button>
        </li>
      </form>
    </div>
  </nav>
</div>

<br/>
<br/>

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
                                <label class="col-sm-4 col-form-label">Cantidad debida: &nbsp;</label>
                                <div class="col-sm-8">
                                    <input value="" type="number" class="form-control" name="amountDue" id="amountDue" placeholder="Cantidad debida">
                                </div>
                            </div>

                        </form>
                    </div>

                </span>
            </div>
        </div>
    </form>			
</div>


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<script src="js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jqueryui/1.10.4/jquery-ui.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script type="text/javascript" src="assets/js/overhang.min.js"></script>
<script src="../assets/js/app.js"></script>

</body>

</html>
