<?php

	$mysqli = new mysqli("localhost", "root", "", "datapro");

	$salida = "";
	$query = "SELECT * FROM factura_orden ORDEN BY order_id";

	if(isset($_POST['consulta'])){
		$q = $mysqli->real_escape_string($_POST['consulta']);
		$query = "SELECT order_id, orden_receiver_name, order_total_after_tax FROM factura_orden
		WHERE orden_receiver_name LIKE '%".$q."%' OR orden_total_after_tax LIKE '%".$q."%'";
	}

	$resultado = $mysqli->query($query);

	if($resultado->num_rows > 0){

		$salida.="<table class='tabla_datos'>
					<thead>
						<tr>
		                  <td>Fac No.</td>
		                  <td>Fecha Creación</td>
		                  <td>Cliente</td>
		                  <td>Factura Total</td>
		                  
		                </tr>
					</thead>
					<tbody>";
		while($fila = $resultado->fetch_assoc()){
			$salida.="<tr>
                        <td>".$fila['order_id']."</td>
                        <td>".$fila['order_date']."</td>
                        <td>".$fila['order_receiver_name']."</td>
                        <td>".$fila['order_total_after_tax']."</td>
                      </tr>";
		}

		$salida.="</tbody></table>";

	} else {
		$salida.="NO hay datos :(";

	}
	echo $salida;

	$mysqli->close();

?>