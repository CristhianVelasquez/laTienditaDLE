<div>

<h1>Actualizar Datos</h1>

<form action="procesar/procesar_edicion.php" method="post">
	<label for="dni">
		DNI : <?php echo  $datos[0]['DNI']; ?>
		<input name="dni" type="hidden" value="<?php echo  $datos[0]['DNI'];?>" />
	</label></br>
	<label>Nombre</label><input type="text" name="nombre" value="<? echo $datos[0]['Nombre'];?>"/></br>
	<label>Apellido</label><input type="text" name="apellido" value="<? echo $datos[0]['Apellido'];?>"/></br>
	<label>Edad</label><input type="text" name="edad" value="<? echo $datos[0]['Edad'];?>" />

	<input type="submit" value="Guardar"/>
</form>


</div>