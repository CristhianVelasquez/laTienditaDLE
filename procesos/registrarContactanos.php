<?php

	include "config.php";
	include "funciones.php";
	$mensaje="";
	$msgGeneralError="";
	$msgConfirmation="";

	if($_SERVER['REQUEST_METHOD']!='POST'){
		$msgGeneralError='Metodo de acceso no permitido.';
	}else{

		if(isset($_POST['nombre']) && isset($_POST['correo']) && isset($_POST['mensaje']) ){
			$nombre=$_POST['nombre'];
			$correo=$_POST['correo'];
			$mensaje=$_POST['mensaje'];			
			$verificar=true;
			
			//NOMBRE
			$msgErrorNombre="";
			if(is_numeric($nombre)){
				$verificar = false;
				$msgErrorNombre='El nombre no debe de ser num&eacute;rico';
			}else if($nombre == ""){
				$verificar = false;
				$msgErrorNombre='Debe ingresar un nombre v&#225lido';
			}
			
			//MENSAJE	
			$msgErrorMensaje="";
			if($mensaje == ""){
				$verificar = false;
				$msgErrorMensaje='Debe ingresar un mensaje';
			}
			
			//CORREO
			$msgErrorCorreo="";
			if($correo==""){
				$verificar=false;
				$msgErrorCorreo='El correo no puede estar vac&iacute;o';
			}
			if($verificar==true){
				
				consulta_bd_sin_resultados("INSERT INTO mensajecontacto(nombre,correo,mensaje) VALUES('$nombre','$correo','$mensaje')",$config);
				$msgConfirmation="Se ha registrado satisfactoriamente";
			}
		}else{
			$msgGeneralError='Ha ocurrido alg&uacute;n problema al enviar los datos. Vuelva a intentarlo m&aacute;s tarde.';
		}
	}
	//echo $mensaje;	
	//Se realizara redireccion cuando se accese por otro medio, ya que el formulario de registro siempre envía todos los parámetro a pesar de estar vacíos
	//header("Location:../index.php?pag=registrate");


	//CREACION DEL RESPONSE DE ERRORES
	
	$response=array(
	"errorNombre" => $msgErrorNombre,
	"errorCorreo" => $msgErrorCorreo,
	"errorMensaje" => $msgErrorMensaje,	
	"confirmation" => $msgConfirmation,
	"generalError" => $msgGeneralError
	);
	echo json_encode($response);

?>