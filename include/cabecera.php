<?php $data;
	if(isset($_SESSION['carrito'])){
		$data = json_decode(json_encode($_SESSION['carrito']), true);
	}else{
		$data = array();}
?>
<div class="navbar navbar-fixed-top" id="categorias">
	<div class="navbar-inner">
		<div class="container">
			<button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
			</button>
			<a class="brand" href="<?php echo $_SERVER['SCRIPT_NAME'];?>" style="padding-bottom: 0;"><img style="width: 100px;"src="img/logo.png"></a>
				<form action="index.php" method="GET" id="formuBusq">
						<input type="hidden" name="pag" value="result"></input>
						<input type="text" class="input-medium search-query span2 row" name="textoBusquedaPrincipal" placeholder="Búsqueda" id="buscon"></input>					
						<input type="submit" class="btn-danger" value="Buscar"></input>
				</form>
			<div class="sombreo nav-collapse collapse pull-right">
				
				<ul class="nav nav_fix">
					<li>
						<a href="<?php echo $_SERVER['SCRIPT_NAME'];?>?pag=products" class="navbar-link">Productos</a>
					</li>	
				</ul>
				<ul class="nav nav_fix pull-right">
					<li>
						<a href="<?php echo $_SERVER['SCRIPT_NAME'];?>?pag=car" class=""><i class="icon-white icon-shopping-cart pull-left" style="padding-right: 3px;"></i><span id="carritoCantidad" class="badge badge-success"><?php echo count($data) ?></span> Carrito</a>
					</li>
					<li>
						<a href="<?php echo $_SERVER['SCRIPT_NAME'];?>?pag=help" class=""><i class="icon-white icon-info-sign pull-left" style="padding-right: 3px;"></i>Ayuda</a>
					</li>
					
					<?php if(!isset($_SESSION['objUsuarioEmpresa'])){ ?>

					<li>
						<a href="<?php echo $_SERVER['SCRIPT_NAME'];?>?pag=acceder" class=""><i class="icon-white icon-pencil pull-left" style="padding-right: 3px;"></i>Registrarse/Acceder</a>
					</li>
					
					<?php }else{ if($_SESSION['objUsuarioEmpresa']['nombreGrupo']=='usuarios consumidores'){ ?>
					
					<li>
						<a href="#" class=""><i class ="icon-user pull-left" style="padding-right: 3px;"></i>Mi Cuenta(<?php echo $_SESSION['objUsuarioEmpresa']['ruc'] ?>)</a>
					</li>
					
					<?php }else if($_SESSION['objUsuarioEmpresa']['nombreGrupo']=='administrador'){ ?> 
						<li>
							<a href="<?php echo $_SERVER['SCRIPT_NAME'];?>?pag=admin" class=""><i class ="icon-briefcase icon-white pull-left" style="padding-right: 3px;"></i>Administrar</a>
						</li>
						
					<?php  } ?>
					
					
					<li>
						<a href="procesos/cerrarSesion.php" class=""><i class ="icon-off icon-white pull-left" style="padding-right: 3px;"></i>Salir</a>
					</li>
					
					<?php } ?>
				</ul>
			</div>
		</div>
	</div>
</div>
<br><br><br>
