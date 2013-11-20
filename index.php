<?php session_start(); ?>
<!DOCTYPE html>
<html lang="es">
	<head>
		<title>
			.:: La tiendita de la esquina ::.
		</title>
		<meta http-equiv="Content-type" content="text/html;
<?php header("Content-Type: text/html;charset=utf-8"); ?>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link href="css/estilos.css" type="text/css" rel="stylesheet"/>
		<link href="css/estiloExtra.css" type="text/css" rel="stylesheet"/>
		<link href="css/bootstrap.css" type="text/css" rel="stylesheet"/>
		<link href="css/bootstrap-responsive.css" type="text/css" rel="stylesheet"/>
		<script src="js/jquery-1.10.2.js" type="text/javascript"></script>
		<script src="js/bootstrap.js" type="text/javascript"></script>
		<script src="js/scriptBase.js" type="text/javascript"></script>
		<script src="js/bootbox.min.js" type="text/javascript"></script>
		<script src="js/scriptEfectos.js" type="text/javascript"></script>
		
		
		
	</head>
	<body>
		<div class="container">
			<?php include("include/cabecera.php");?>
			<div class="row">
				
				<div class="span9">
					<?php //include("include/barra_categorias_productos.php") ?>
					<section>
						<div style="background-color: #ffffff;">
							<?php
								include("procesos/validarContenido.php");
								//include('pags/registroB.php');
								?>
							<div class="clearfix"></div>
						</div>
					</section>
					<div class="clearfix"></div>
				</div>
			</div>
			<div class="clearfix"></div>
			<?php include("include/pie_de_pagina.php") ?>
		</div>

	</body>
</html>