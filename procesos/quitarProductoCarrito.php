<?php
session_start();

$mensaje='';
$total = 0;
	 
if(isset($_POST['indice'])){
	if(isset($_SESSION['carrito'])){;
		$data = json_decode(json_encode($_SESSION['carrito']), true);
	}else{ 
		$data = array(); 
	}
	$indice=$_POST['indice'];
	unset($data[$indice]);
	//CALCULO DE TOTAL
	foreach($data as $itemCarrito){
		$totalItem = ($itemCarrito['price']*$itemCarrito['quantity']);
		$total = $total + $totalItem;
	}
	$_SESSION['carrito']=$data;
	$mensaje='Se ha borrado satisfactoriamente';
}else{
	$mensaje='No se ha enviado el indice correctamente';
}
	$result=array();
	$result['total'] = $total;
	$result['mensaje'] = $mensaje;
	$result['cantidadProductos'] = count($data);
	echo json_encode($result);
?>