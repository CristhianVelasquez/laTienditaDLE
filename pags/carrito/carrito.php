<!--PENDIENTE POR ANALISIS DE CALIDAD-->
<?php
$fecha = date('Y-m-j');
$nuevafecha = strtotime ( '+2 day' , strtotime ( $fecha ) ) ;
$nuevafecha = date ( 'Y-m-j' , $nuevafecha );
?>

<div class="page-header">
		<h1>Mi Carrito</h1>
</div>
<div>
<?php $data;
	if(isset($_SESSION['carrito'])){;?>
<?php $data = json_decode(json_encode($_SESSION['carrito']), true); ?>
<?php }else{ $data = array(); } ?>
	<table class="table table-striped">
		<thead>
			<tr>
				<th>Cantidad</th>
				<th>Producto</th>
				<th class="hidden-phone">Capacidad</th>
				<th>Precio Unitario</th>
				<th>Precio Total</th>
			</tr>
		</thead>
		<tbody>
			<?php $total = 0;?>
			<?php foreach($data as $key=>$itemCarrito){ ?>
			<?php $totalItem = ($itemCarrito['price'] * $itemCarrito['quantity']);?>
			<?php $total = $total + $totalItem?>
			<tr>
				<td><?php echo $itemCarrito['quantity'] ?></td>
				<td><?php echo $itemCarrito['name'] ?></td>
				<td class="hidden-phone"><?php echo $itemCarrito['capacity'] ?></td>
				<td>S/. <?php echo $itemCarrito['price'] ?></td>
				<td >S/. <?php echo $totalItem?></td>
				<td><a class="rubish" index-array="<?php echo $key?>" href=""><i class="icon-trash"></i></a></td>
			</tr>
			<?php } ?>
			<!--<tr>
				<td></td>
				<td></td>
				<td class="hidden-phone"></td>
				<td></td>
				<td>S/.<span id="precioTotal-carrito"> <?php //echo $total ?></span></td>
				<td></td>
			</tr>-->
		</tbody>
	</table>
</div>
<div  class="span4 pull-right" style="padding-top: 5%; margin-right: 5%">
<div class="well center">
	<form action="" method="">
		<label>Total de compras</label>
		<input id="precioTotal-carrito" type="text" class="span2" value="S/.<?php echo $total ?>" readonly />
		<label>Fecha de entrega</label>
		<input type="date" name="datepicker" class="span2" value="<?php echo $nuevafecha;?>" readonly />
		<div class="clear"></div>
		<?php if(isset($_SESSION['objUsuarioEmpresa'])){?>
			<button id="realizarCompra"  class="btn">Confirmar compra</button>
		<?php }else{?>
			<p>Haga click <a href="index.php?pag=acceder">aqu&iacute;</a> para Iniciar sesi&oacute;n y continuar.</p>
		<?php }?>
	</form>
</div>
<!--<fieldset><legend><h5>Tambien te puede interesar</h5></legend>Otros:</fieldset>-->
</div>
<div class="clear"></div>

<div class="clearfix"></div>