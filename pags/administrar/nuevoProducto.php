<form action="procesos/insertProductoDB.php" method="post">
	<h1>Nuevo Producto</h1>
	<span>Complete los campos:</span>
	
	<label for="">Codigo</label>
	<input type="text" name="codigo"/>
	<label for="">Nombre</label>
	<input type="text" name="nombre"/>
	<label for="">Precio Unitario</label>
	<input type="text" name="precio_unit" />
	<label for="">Precio Caja</label>
	<input type="text" name="precio_cj"/>
	<label for="">Unidades Caja</label>
	<input type="text" name="unid_cj"/>
	<label for="">Stock x Caja</label>
	<input type="text" name="stock_cj"/>
	<br>
	<input type="submit" value="Añadir"/>
</form>