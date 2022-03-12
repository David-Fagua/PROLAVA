<!--*********************************************************
* Sistema PROLAVA                                           *
*                                                           *
* Fecha:    2022-01-25                                      *
* Autor:  David Fagua                                       *
* Contacto:  fagua99@gmail.com                              *
************************************************************-->

<!--HTML-->

<!DOCTYPE html>
<html lang="es">
<head>
<title>Buscar</title>


<?php include '../partials/headA.php';?>

<?php include '../partials/menuA.php';?>


<main>

</--Zona de pruevas--/>

<script src="../../assets/js/jquery-3.4.1.min.js"></script>
<script src="../../assets/js/buscar.js"></script>

<center>
  <div class="col-md-1">
    </div>
    <div class="col-md-10"> 
    
    <div class="form-group col-md-12">
      <div>
        <button class="btn btn-primary" href="#">Buscar <i class="fas fa-search"></i></button>
        <input class="form-group col-md-6" type="text" name="termino" id="termino" placeholder="Digite el nombre del producto que desea buscar..." aria-label="Search">
      </div>	
      <div style="height: 480px;width: 1000px; overflow-y: auto;" id="tabla_resultados">
      </div>
    </div>
    
    </div> 
    <div class="col-md-1">
  </div>
</center>


</main>


<?php include '../partials/footerA.php';?>