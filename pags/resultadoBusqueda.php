<?php 
	
	include ('procesos/config.php'); 
	include ('procesos/funciones.php');
	
	$textoBusquedaPrincipal="";
	
	if(isset($_POST['textoBusquedaPrincipal'])){
	$busqueda = $_POST['textoBusquedaPrincipal'];
	$busqueda = mysql_real_escape_string($busqueda);
	$productos = consulta_bd("SELECT * FROM producto WHERE nombreProducto LIKE '%$textoBusquedaPrincipal%'", $config);
	
	
	}
	
?>

<div class="tabbable tabs-below">
	<div id="primeraPagina">
		<ul class="thumbnails">
			<?php foreach ($productos as $p) { ?>
			<li class="span3">
				<div class="thumbnail">
					<img src="<?php echo $p['direccionImagen']; ?>">
					<div class="caption">
						<h4><?php echo $p['nombreProducto']; ?></h4>
						<h4> <small>C&oacute;digo : <?php echo $p['codigoProducto']; ?></small></h4>
						<p style="font-size: 9pt;"> <?php echo $p['tamanioUnidad']; echo $p['unidadMedida'];?></p>	
						<p style="font-size: 9pt;">Stock : <span class="badge badge-success"><?php echo $p['stock']; ?></span></p>						
						<p><strong> S/.<?php echo $p['precioUnitario']; ?></strong></p>
						<p>Cantidad: <input class="itemCantidad_<?php echo $p['codigoProducto']; ?> span1" placeholder="0" /></p>
						<p><a class="btn-agregarACarrito btn btn-primary" data-codigoProducto="<?php echo $p['codigoProducto']; ?>" data-nombre="<?php echo $p['nombreProducto']; ?>" data-capacidad="<?php echo $p['tamanioUnidad']; echo $p['unidadMedida'];?>" data-precio="<?php echo $p['precioUnitario']?>">Agregar a Carrito</a></p>
					</div>					
				</div>
			</li>
			<?php } ?>
		</ul>	
	</div>	
</div>