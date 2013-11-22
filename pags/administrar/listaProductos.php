<?php 
$sentencia="SELECT * FROM producto ";
$productos=consulta_bd_fetchByIndex($sentencia,$config);
?>
<form>
<button>Nuevo</button>
<button>Eliminar</button>
<div class="clear"></div>
<input type="text" placeholder="Digite aqu&iacute;..."/>
<input type="submit" value="Buscar"/>
</form>
<table>
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