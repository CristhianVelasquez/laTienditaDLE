<?php 

$sentencia="SELECT * FROM producto ";
$productos=consulta_bd_fetchByIndex($sentencia,$config);
?>

<button><a href="index.php?pag=nuevoProducto">Añadir Producto</a></button>
<form>
<input type="text" placeholder="Digite aqu&iacute;..."/>
<input type="submit" value="Buscar"/>
</form>

<table class="table table-striped">
<tr>
	<th>C&oacute;digo</th>
	<th>Nombre</th>
	<th>Precio Unitario</th>
	<th>Detalles</th>
</tr>
<?php foreach($productos as $p){?>
<tr>
	<td>
		<?php echo $p['codigoProducto']?>
	</td>
	<td>
		<?php echo $p['nombreProducto']?>
	</td>
	<td>
		<?php echo $p['precioUnitario']?>
	</td>
	<td>
		<a href="index.php?pag=viewProducts&productId=<?php echo $p['codigoProducto']?>">Ver</a>
	</td>
</tr>
<?php }?>
</table>