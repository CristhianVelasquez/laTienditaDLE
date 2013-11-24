<?php
	$nombreCategoria;
	if(isset($_GET['subpag'])){ 
		$nombreCategoria=$_GET['subpag'];
	}else{
		$nombreCategoria="";
	}
	$subCategoriaArray="SELECT *, subc.nombre FROM subcategoriaproducto subc, categoriaproducto cat WHERE subc.codigoCategoria=cat.codigoCategoria AND cat.nombre='$nombreCategoria'";
	$querySubCategoria=consulta_bd_fetchByIndex($subCategoriaArray,$config);
	//echo json_encode($querySubCategoria);
	?> 		
<div>
	<div class="page-header">
		<?php if(isset($_GET['subpag'])){ ?>
		<h1>Secci&oacute;n <?php echo ucfirst($_GET['subpag']) ?></h1>
		<?php }else{ ?>
			<h1>Todos los Productos</h1>
		<?php } ?>
	</div>
	<div class="tabbable tabs-below">
	<?php if(isset($_GET['subpag'])){ ?>
		<div class="tab-content">
			<ul id="catalogoTab" class="nav nav-tabs">
				<?php foreach($querySubCategoria as $sub){?>
				<li class=""><a  name="<?php echo $sub['nombre']?>" href="#<?php echo $sub['codigosubCategoria']?>" data-toggle="tab"><?php echo $sub['nombre']?></a></li>
				<?php } ?>
			</ul>
			<?php $i = 0;
				foreach($querySubCategoria as $sub){?>
			<div class="tab-pane active" id="<?php echo $sub['codigosubCategoria']?>">
		<?php
		$subCategoria = $sub['codigosubCategoria'];
		$consulta = "SELECT * FROM producto WHERE codigosubCategoria=$subCategoria";
		$productos = consulta_bd($consulta, $config);
	?>

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
			<?php $i++;} ?>
		</div>
		<script>
			$('#myTab a').click(function (e) {
			 e.preventDefault();
			 $(this).tab('show');
			})
		</script>
	<?php }else{?>
				<?php
	
	$consulta = "SELECT * FROM producto";
	$productos = consulta_bd($consulta, $config);
?>

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

	<?php }?>
	</div>
</div>