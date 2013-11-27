<?php
	$direccion='';
	if(!isset($_GET['seccion'])){
		$direccion='pags/ayuda/preguntasFrecuentes.php';
	} else{
		$sec=$_GET['seccion'];
		switch($sec){
			case 'beneficios': //Beneficios
				$direccion='pags/ayuda/beneficios.php';
			break;
			case 'comprar': //Comprar
				$direccion='pags/ayuda/comprar.php';
			break;
			case 'formasPago': //Formas de Pago
				$direccion='pags/ayuda/formasPago.php';
			break;
			case 'preguntasFrecuentes': //Preguntas Frecuentes
				$direccion='pags/ayuda/preguntasFrecuentes.php';
			break;
			case 'ayudaRegistro': //Ayuda de Registro
				$direccion='pags/ayuda/ayudaRegistro.php';
			break;
		}
	}
	include ($direccion);
	
?>