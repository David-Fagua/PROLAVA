<!DOCTYPE html>
<html lang="es">
<head>
  
  <title>Iniciar Sesión</title>

	<?php include 'partials/head.php';?>
  <?php include 'partials/menu.php';?>

<br>

<!--Tabla-->

center>
		<body>
        <div class="content"> 
		<div class="container">
        <div class='wrap-table100'>  
        <div class='table100 ver1 m-b-110'>    
        <table data-vertable='ver1'>
          					<br>
              				<h2>TABLA DE PRODUCTOS</h2>
          					<br>
                        	<thead>
							<tr class='row100 head'>
							<th align="center" style='width:50px'>ID</th> 
							<th class='column100 column2' data-column='column2'><center>PRODUCTO</center></th>
							<th class='column100 column3' data-column='column3'><center>SERIE</center></th>
							<th class='column100 column4' data-column='column4'><center>FECHA INGRESO</center></th>
                            <th class='column100 column4' data-column='column4'><center>EDIT</center></th>
           					</tr>
							</thead>   
              <tbody>
				

<?php
require('conectar.php');
?>
						                      


<?php
$tabla = $_POST['TABLA'];
$sql = "SELECT * from `".$tabla."` order by fechaing DESC";
$result = mysqli_query($con, $sql);
while($crow = mysqli_fetch_assoc($result))
            			{	
?>
<tr class='row100'>
<td style='width:10px'><center> <?php echo $crow['id'];?> </center></td>
<td> <center><?php echo $crow['producto']; ?>  </center> </td>
<td> <center><?php echo $crow['serie']; ?></center></td>
<td> <center><?php echo $crow['fechaing']; ?></center></td>
<td><center><a href="editar_registro.php?EDITAME=<?php echo $crow['id']; ?>" class="edit_btn" >Edita</a></center></td>
</tr>
<?php
  	    	}		
?>

<?php include 'partials/menufinal.php';?>
<?php include 'partials/footer.php';?>

