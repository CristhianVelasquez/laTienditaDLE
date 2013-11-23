<?
$razon = $_SESSION["razonSocial"];

$consulta = "SELECT * FROM empresa WHERE razonSocial = '$razon'";

$datos = consulta_bd($consulta, $config);

$ruc = $datos[0]['ruc'];
$razon_social = $datos[0]['razonSocial'];
$direc_fiscal = $datos[0]['direccionFiscal'];
$telefono = $datos[0]['telefono'];
$email = $datos[0]['correo'];


?>

<h1>Detalle</h1>

<p>RUC : <?=$datos[0]['ruc'];?><p>
<p>Razon Social : <?=$datos[0]['razonSocial'];?><p>
<p>Direccion : <?=$datos[0]['direccionFiscal'];?><p>
<p>Telefono : <?=$datos[0]['telefono'];?><p>
<p>Email :  <?=$datos[0]['correo'];?><p>
<!--
<form action="actualizar.php" method="post">
	<label for="ruc">
			RUC : <?php echo  $datos[0]['ruc']; ?>
			<input name="ruc" type="hidden" value="<?php echo  $datos[0]['ruc'];?>" />
	</label></br>
	<label>Razon Social :</label><input type="text" name="razon_social" value="<? echo $datos[0]['razonSocial'];?>" readonly /></br>
	<label>Direccion Fiscal :</label><input type="text" name="direc_fiscal" value="<? echo $datos[0]['direccionFiscal'];?>" readonly /></br>
	<label>Telefono :</label><input type="text" name="telefono" value="<? echo $datos[0]['telefono'];?>" readonly /></br>
	<label>Email :</label><input type="text" name="email" value="<? echo $datos[0]['correo'];?>" readonly /></br>

-->
<form action="index.php?pag=actualizar" method="post">
	<input type="submit" value="Editar"/></br>
</form>

</body>
</html>