<?php
session_start();
include 'config.php';
include 'funciones.php';
	$msgErrorContrasenia='';
if($_SERVER['REQUEST_METHOD']!='POST'){
		$msgErrorContrasenia='Metodo de acceso no permitido.';
}else{
	if(isset($_POST['ruc']) && isset($_POST['contrasenia'])){

	$ruc=$_POST["ruc"];
	$passwordInput=$_POST["contrasenia"];
	//SE CONSULTA POR RUC PARA PODER OBTENER EL SALT PARA VALIDAR CONTRASEÑA
	
	$passwordResponse=consulta_bd_fetchByIndex("SELECT * FROM usuario usu, contrasenia cont WHERE usu.codigoUsuario = cont.codigoUsuario AND usu.nombreUsuario='$ruc' AND cont.flagContraseniaActual=1",$config);
	if(count($passwordResponse)>0){
		
    	$element=$passwordResponse[0];
    	//SE OBTIENE EL SALT Y SE ENCRIPTA
   		$passwordOutput=crypt($passwordInput,$element["contrasenia"]);
			if($element["contrasenia"]==$passwordOutput){
				$codigoEmpresa=$element["codigoEmpresa"];
				$registroEmpresa=consulta_bd_fetchByIndex("SELECT usu.codigoUsuario,emp.ruc,emp.razonSocial,emp.telefono,emp.direccionFiscal,emp.correo,gru.nombreGrupo FROM empresa emp,usuario usu,grupo_usuario gruUsu,grupo gru 
				WHERE emp.codigoEmpresa=$codigoEmpresa 
				AND emp.codigoEmpresa=usu.codigoEmpresa
				AND usu.codigoUsuario=gruUsu.codigoUsuario
				AND gruUsu.codigoGrupo=gru.codigoGrupo",$config);
				$_SESSION["objUsuarioEmpresa"]=$registroEmpresa[0];
			}else{
				 $msgErrorContrasenia="Los datos son incorrectos.";		
			}
			
		}else{
			$msgErrorContrasenia="El usuario no se encuentra registrado.";
		}

	}else{
			$msgErrorContrasenia="Aseg&uacite;rese de haber especificado su RUC y contrasen&ntilde;a.";
	}
}
	//CREACION DEL RESPONSE DE ERRORES
	$response=array(
	"errorInicio" => $msgErrorContrasenia
	);
	echo json_encode($response);
?>