<?php
	include "procesos/config.php";
	include "procesos/funciones.php";
if(isset($_GET['productId'])){
$codigoProducto=$_GET['productId'];
$productoSeleccionado=verDetallesProducto($codigoProducto,$config);
?>
	<?php if($productoSeleccionado>0){?>
	<form>
	<img src="<?php echo $productoSeleccionado[0]['direccionImagen']?>" alt="producto"/>
	<label for="">Codigo</label>
	<input type="text" value="<?php echo $productoSeleccionado[0]['codigoProducto']?>"/>
	<label for="">Nombre</label>
	<input type="text" value="<?php echo $productoSeleccionado[0]['nombreProducto']?>"/>
	<label for="">Precio Unitario</label>
	<input type="text" value="<?php echo $productoSeleccionado[0]['precioUnitario']?>"/>
	<label for="">Precio Caja</label>
	<input type="text" value="<?php echo $productoSeleccionado[0]['precioCaja']?>"/>
	<label for="">Unidades Caja</label>
	<input type="text" value="<?php echo $productoSeleccionado[0]['unidadesCaja']?>"/>
	<button>Editar</button>
	<button>Atr&aacute;s</button>
	</form>
	<?php }else{ ?>
			<p>El producto solicitado ya no existe.</p>
	<?php }?>
	
<?php }else {?>
<?php header('location: index.php'); ?>
<?php }?>