<!--PENDIENTE POR ANALISIS DE CALIDAD-->
<?php

$mañana = date("Y-m-d",mktime(0,0,0,date("m"),date("d")+1,date("Y")));

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
			<?php foreach($data as $itemCarrito){ ?>
			<?php $totalItem = ($itemCarrito['price'] * $itemCarrito['quantity']);?>
			<?php $total = $total + $totalItem?>
			<tr>
				<td><?php echo $itemCarrito['quantity'] ?></td>
				<td><?php echo $itemCarrito['name'] ?></td>
				<td class="hidden-phone"><?php echo $itemCarrito['capacity'] ?></td>
				<td>S/. <?php echo $itemCarrito['price'] ?></td>
				<td>S/. <?php echo $totalItem?></td>
			</tr>
			<?php } ?>
			<tr>
				<td></td>
				<td></td>
				<td class="hidden-phone"></td>
				<td></td>
				<td>S/. <?php echo $total ?></td>
			</tr>
		</tbody>
	</table>
</div>
<div  class="span4 pull-right" style="padding-top: 5%; margin-right: 5%">
<div class="well center"><form action="">
	<label>Total de compras</label>
    <input type="text" class="span2" value="S/.<?php echo $total ?>" readonly>
	<label>Fecha de entrega</label>
	<input type="date" name="datepicker" class="span2" min="<?= $mañana ?>">
    <div class="clear"></div>
    <button type="submit" class="btn">Confirmar compra</button>
</form></div>
<!--<fieldset><legend><h5>Tambien te puede interesar</h5></legend>Otros:</fieldset>-->
</div>
<div class="clear"></div>
<div class="pull-left">
	<input class="boton-carrito" type="button" value="Continuar comprando" />
	<input class="boton-carrito" type="button"  value="Confirmar compra"/>
</div>
<div class="clearfix"></div>