<div>
<?php $data;
	if(isset($_SESSION['carrito'])){
		$data = json_decode(json_encode($_SESSION['carrito']), true);
	}else{ 
		$data = array(); 
	} 
	 $total = 0;
	foreach($data as $key=>$itemCarrito){ 
		$totalItem = ($itemCarrito['price'] * $itemCarrito['quantity']);
		$total = $total + $totalItem;
	} 
?>
	<p>La compra se ha realizado satisfactoriamente.</p>
	<ul>
		<li>La compra se ha realizado a nombre de  <?php echo $_SESSION["objUsuarioEmpresa"]['razonSocial']?>.</li>
		<li>El monto total que debe de pagar es de S/.<?php echo $total?>.</li>
		<li>Nuestros distribuidores se apersonar&aacute;n a <?php echo $_SESSION["objUsuarioEmpresa"]['direccionFiscal']?> dentro de 36 horas para realizar la entrega de la mercader&iacute;a.</li>
		<p>&#33;Gracias por su compra!</p>
		
	</ul>
	<?php unset($_SESSION['carrito']);?>
</div>