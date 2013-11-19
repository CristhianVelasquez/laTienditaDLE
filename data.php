<?php 
//echo json_encode($_SERVER['CONTENT_TYPE'])
//echo json_encode($GLOBALS)
//echo json_encode($GLOBALS["HTTP_RAW_POST_DATA"])

$data;
if($_SERVER['REQUEST_METHOD']!='POST'){
		$mensaje='Metodo de acceso no permitido.';
}else{
	if(stripslashes($_SERVER['CONTENT_TYPE'])=="application/x-www-form-urlencoded"){
		$data = $_POST;
	}elseif(stripslashes($_SERVER['CONTENT_TYPE'])=='text/plain;charset=UTF-8'){
		$data= json_decode(stripslashes($HTTP_RAW_POST_DATA));
	}
	echo json_encode($data);
	//echo json_encode($_POST);
}
?>