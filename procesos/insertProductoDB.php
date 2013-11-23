<?php
if(isset($_POST['nombre']) && isset($_POST['precio_unit']) && isset($_POST['precio_cj'])
	&& isset($_POST['unid_cj']) && isset($_POST['stock_cj'])){
	$nombre = $_POST['nombre'];
	$precio_unit = $_POST['precio_unit'];
	$precio_cj = $_POST['precio_cj'];
	$unid_cj = $_POST['unid_cj'];
	$stock_cj = $_POST['stock_cj'];

	$verificar=true;
	
	$msgErrorNumeros="";
	if(!is_numeric($precio_unit) || !is_numeric($precio_cj) || !is_numeric($unid_cj) || !is_numeric($stock_cj)){
		$verificar = false;
		$msgErrorNumerico='Los precios o cantidades deben ser numeros.';
	}
	
	$msgErrorLetra="";
	if(is_numeric($nombre)){
		$verificar = false;
		$msgErrorLetra = "El nombre no lleva digitos";
	}
}

if($verificar){
	$consulta = "INSERT(nombreProducto,precioUnitario,precioCaja,unidadesCaja,stock,)INTO producto VALUES ($nombre,$precio_unit,$precio_cj,$unid_cj,$stock_cj);"
	$datos = consulta_bd_sin_resultados($consulta,$config);
	$comprobar = "SELECT COUNT(*) FROM producto WHERE nombreProducto = $nombre";
	$comprobando = consulta_bd($comprobar,$config);
	
	if($comprobando == 0){?>
		<script language="javascript">
			alert("El producto no ha sido añadido.Lo sentimos.");
		</script><?
	}else{?>
		<script language="javascript">
			alert("Operacion exitosa.");
		</script><?
	
	}
}else{
//CREACION DEL RESPONSE DE ERRORES
	$response=array(
	"errorContrasenia" => $msgErrorContrasenia,
	"errorRazonSocial" => $msgErrorRazonSocial,
	"errorRuc" => $msgErrorRuc,
	"errorDireccionFiscal" => $msgErrorDireccionFiscal,
	"errorCorreo" => $msgErrorCorreo,
	"errorTelefono" => $msgErrorTelefono,
	"confirmation" => $msgConfirmation,
	"generalError" => $msgGeneralError
	);
	echo json_encode($response);
}

	

?>