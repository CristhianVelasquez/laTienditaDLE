<?php
	$mensaje="";
	$msgGeneralError="";
	$msgConfirmation="";

	if($_SERVER['REQUEST_METHOD']!='POST'){
		$msgGeneralError='Metodo de acceso no permitido.';
	}else{

		if(isset($_POST['contrasenia1']) && isset($_POST['contrasenia2']) && isset($_POST['razonSocial']) && isset($_POST['ruc']) && isset($_POST['direccionFiscal']) && isset($_POST['correo']) && isset($_POST['telefono']) && isset($_POST['flagContactoCorreo'])){
			$contrasenia1=$_POST['contrasenia1'];
			$contrasenia2=$_POST['contrasenia2'];
			$razonSocial=$_POST['razonSocial'];
			$ruc=$_POST['ruc'];
			$dirFiscal=$_POST['direccionFiscal'];
			$correo=$_POST['correo']; 
			$telefono=$_POST['telefono'];
			$flagContactoCorreo=$_POST['flagContactoCorreo'];
			$verificar=true;
			
			//RUC
			$msgErrorRuc="";
			if(!is_numeric($ruc)){
				$verificar = false;
				$msgErrorRuc='El ruc debe de ser num&eacute;rico';
			}else if(strlen($ruc) != 11){
				$verificar = false;
				$msgErrorRuc='La longitud del ruc debe de ser de 11 digitos.';
			}else if(yaExisteRucEmpresa($ruc,$config)==true){
				$verificar = false;
				$msgErrorRuc='RUC ya registrado anteriormente.';
			}
			//CONTRASENIA 1 y 2	
			$msgErrorContrasenia="";

			if($contrasenia1=="" || $contrasenia2==""){
				$verificar = false;
				$msgErrorContrasenia='No se permiten valores vac&iacute;os';
			} else	if($contrasenia1 != $contrasenia2){
				$verificar = false;
				$msgErrorContrasenia='Las contrase&ntilde;as no coinciden.';
			} else if(strlen($contrasenia1) < 6){
				$verificar = false;
				$msgErrorContrasenia='La longitud m&iacute;nima de la contrase&ntilde;a es de 6.';
			} else if($contrasenia1 == $ruc){
				$verificar = false;
				$msgErrorContrasenia='El nro de RUC no puede ser la contra&ntilde;a.';
			}

			//RAZON SOCIAL
			$msgErrorRazonSocial="";
			if($razonSocial==""){
				$verificar = false;
				$msgErrorRazonSocial='La raz&oacute;n social no puede estar vac&iacute;o.';
			}
			//TELEFONO
			$msgErrorTelefono="";
			if($telefono==""){
				$verificar = false;
				$msgErrorTelefono='El n&uacute;mero de tel&eacute;fono no puede estar vac&iacute;o.';
			}else if(!is_numeric($telefono)){
				$verificar = false;
				$msgErrorTelefono='El tel&eacute;fono debe de ser num&eacute;rico.';
			}

			//CORREO
			$msgErrorCorreo="";
			if($correo==""){
				$verificar=false;
				$msgErrorCorreo='El correo no puede estar vac&iacute;o';
			}else if(yaExisteCorreoEmpresa($correo,$config)){ 
				$verificar=false;
				$msgErrorCorreo='El correo ya ha esta en uso.';
			}

			//DIRECCION FISCAL
			$msgErrorDireccionFiscal="";
			if($dirFiscal==""){
				$verificar = false;
				$msgErrorDireccionFiscal='La direcci&oacute;n no puede estar vac&iacute;a';

			}

			
			if($verificar==true){
				
				$fechaHoy= date('Y-m-d h:m:s');
				$contrasenia1=crypt($contrasenia1);
				consulta_bd_sin_resultados("INSERT INTO empresa(razonSocial,ruc,telefono,direccionFiscal,correo,flagContactoCorreo) VALUES('$razonSocial','$ruc','$telefono','$dirFiscal','$correo',b'$flagContactoCorreo')",$config);
				$arrayCodigoEmpresa=consulta_bd_fetchByIndex("SELECT MAX(codigoEmpresa) FROM empresa",$config);
				$codigoEmpresa=$arrayCodigoEmpresa[0][0];
				consulta_bd_sin_resultados("INSERT INTO usuario(codigoEmpresa,nombreUsuario) VALUES($codigoEmpresa,'$ruc')",$config);
				$arrayCodigoUsuario=consulta_bd_fetchByIndex("SELECT MAX(codigoUsuario) FROM usuario",$config);
				$codigoUsuario=$arrayCodigoUsuario[0][0];
				consulta_bd_sin_resultados("INSERT INTO contrasenia(codigoUsuario,contrasenia,flagContraseniaActual) VALUES('$codigoUsuario','$contrasenia1',b'1')",$config);
				$codigoGrupoClientesUsuarios='1';
				consulta_bd_sin_resultados("INSERT INTO grupo_usuario(codigoGrupo,codigoUsuario,fechaAsignamiento) VALUES('$codigoGrupoClientesUsuarios','$codigoUsuario','$fechaHoy')",$config);
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

?>
		