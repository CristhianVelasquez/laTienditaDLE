<?
session_start();

include './../procesos/config.php';
include './../procesos/funciones.php';

$ruc = $_POST['ruc'];
$razon_social = $_POST['razon_social'];
$direc_fiscal = $_POST['direc_fiscal'];
$telefono = $_POST['telefono'];
$email = $_POST['email'];

$consulta = "UPDATE empresa SET razonSocial= '$razon_social' ,
			direccionFiscal = '$direc_fiscal' , telefono = '$telefono',correo = '$email'
			WHERE ruc = '$ruc'";

$datos = consulta_bd_sin_resultados($consulta, $config);

$verificar = "SELECT * FROM empresa WHERE ruc = '$ruc'";

$actual = consulta_bd($verificar,$config);

$_SESSION['ruc'] = $actual[0]['ruc'];

header ('Location: ./../index.php?pag=detalle');
?>