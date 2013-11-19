<?php


if(!isset($_POST['ruc'])){
	die('Se requiere su RUC , porfavor digitelo.');
}
if(!is_numeric($_POST['ruc'])){
	die('El ruc consta de numeros, verifique.');
}/*
if(count($_POST['ruc']) < 11){
	die('Verifique su Ruc.');
}
*/
if($_POST['estadoUsuario'] == "Nuevo"){
	$header = 'pags/registroA.php';
}else{
	$header = 'pags/registroB.php';
}

$ruc = $_POST['ruc'];
header($header);



?>