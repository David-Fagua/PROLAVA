<!--*********************************************************
* Sistema PROLAVA                                           *
*                                                           *
* Fecha:    2022-01-25                                      *
* Autor:  David Fagua                                       *
* Contacto:  fagua99@gmail.com                              *
************************************************************-->

<?php 

require_once "buscar.php";
$tabla="";
$consulta=" SELECT * FROM factura_orden LIMIT 0";
$termino= "";
if(isset($_POST['productos']))
{
	$termino=$mysqli->real_escape_string($_POST['productos']);
	$consulta="SELECT * FROM factura_orden WHERE 
	order_id LIKE '%".$termino."%' OR
	order_receiver_name LIKE '%".$termino."%' OR
	order_total_after_tax LIKE '%".$termino."%'";
}
$consultaBD=$mysqli->query($consulta);
if($consultaBD->num_rows>=1){
	echo "
	<table>
		<thead>
			<tr>
				<th class='bg-info' scope='col'>Numero de Factura</th>
				<th class='bg-info' scope='col'>Nombre del Cliente</th>
				<th class='bg-info' scope='col'>Factura Total</th>
				<th class='bg-info' scope='col'></th>
			</tr>
		</thead><br>
		<tbody>";
		while($fila=$consultaBD->fetch_array(MYSQLI_ASSOC)){
			echo "<tr>
				<td>".$fila['order_id']."</td>
				<td> ".$fila['order_receiver_name']."</td>
				<td>$ ".$fila['order_total_after_tax']."</td>
				<!--<td> <button >Imprimir </button></td>-->
			</tr>";
		}
		echo "</tbody>
	</table>";
}else{
	echo "<center><h4>No hemos encotrado ningun registro con la palabra "."<strong class='text-uppercase'>".$termino."</strong><h4><center>";
}
?>