<?php $data;
	if(isset($_SESSION['carrito'])){
		$data = json_decode(json_encode($_SESSION['carrito']), true);
	}else{
		$data = array();}
?>
<div class="navbar navbar-inverse navbar-fixed-top" id="categorias">
	<div class="navbar-inner">
		<div class="container">
			<button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
			</button>
			<a class="brand" href="<?php echo $_SERVER['SCRIPT_NAME'];?>" style="padding-bottom: 0;"><img style="width: 100px;"src="img/logo.png"></a>
			<input type="text" class="input-medium search-query span2 row" name="textoBusquedaPrincipal" placeholder="Búsqueda" id="buscon"></input>
            <a href="#" class="btn btn-danger"><i class ="icon-search pull-left" id="icBus"></i></a>
			<div class="nav-collapse collapse pull-right">
				
				<ul class="nav nav_fix">
					<li>
						<a href="<?php echo $_SERVER['SCRIPT_NAME'];?>?pag=products" class="">Productos</a>
					</li>	   
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
						<a href="#" class=""><i class ="icon-user pull-left" style="padding-right: 3px;"></i>Mi Cuenta</a>
					</li>
					
					<?php }else if($_SESSION['objUsuarioEmpresa']['nombreGrupo']=='administrador'){ ?> 
					
					<li>
						<a href="<?php echo $_SERVER['SCRIPT_NAME'];?>?pag=admin" class=""><i class ="icon-briefcase icon-white pull-left" style="padding-right: 3px;"></i>Administrar</a>
					</li>
					
					<?php } ?>
					
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
<!--
<header id="cabecera">
	<div class="navbar">
		<div class="container">
			<a class="logo" href="#"><img src="img/logo.png" alt="Logo" id="imgLogo"/></a>
			<button type="button" class="btn btn-navbar collapsed" data-toggle="collapse" data-target=".nav-collapse">
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
			</button>
			<div class="pull-right nav-collapse collapse" style="">
				<ul class="nav span4" id="barraNavegacion" style="margin-right: -30px;">
					<li><a href="<?php echo $_SERVER['SCRIPT_NAME'];?>?pag=car" class=""><i class ="icon-shopping-cart pull-left" style="padding-right: 3px;"></i>Carrito</a></li>
					<li><a href="<?php echo $_SERVER['SCRIPT_NAME'];?>?pag=help" class=""><i class ="icon-info-sign pull-left" style="padding-right: 3px;"></i>Ayuda</a></li>
					<?php 
						if(!isset($_SESSION['objUsuarioEmpresa'])){ ?>
					<li><a href="<?php echo $_SERVER['SCRIPT_NAME'];?>?pag=acceder" class=""><i class ="icon-pencil pull-left" style="padding-right: 3px;"></i>Registrarse/Acceder</a></li>
					<?php }else{ 
						if($_SESSION['objUsuarioEmpresa']['nombreGrupo']=='usuarios consumidores'){?>
					<li><a href="#" class=""><i class ="icon-user pull-left" style="padding-right: 3px;"></i>Mi Cuenta</a></li>
					<?php }else if($_SESSION['objUsuarioEmpresa']['nombreGrupo']=='administrador'){ ?> 
					<li><a href="<?php echo $_SERVER['SCRIPT_NAME'];?>?pag=admin" class=""><i class ="icon-briefcase pull-left" style="padding-right: 3px;"></i>Administrar</a></li>
					<?php } ?>
					<li><a href="procesos/cerrarSesion.php" class=""><i class ="icon-off pull-left" style="padding-right: 3px;"></i>Salir</a></li>
					<?php } ?>
				</ul>
			</div>
			<div class="clear"></div>
			<div id="datoUsuario" class="pull-left">
				<?php if(isset($_SESSION['objUsuarioEmpresa'])){ ?>
				<p id="welcomeUsername">Bienvenido,<span id="username">
					<?php echo $_SESSION['objUsuarioEmpresa']['razonSocial']?>
					</span>
				<p/>
					<?php } ?>
			</div>
			<div id="formularioSuperiorBusqueda" class="span5 pull-right">
				<form action="" method="post" class="form-search pull-right">
					<select id="categoriasBusqueda" class="span2">
						<option value="libre">Categor&iacute;as</option>
						<option value="abarrotes">Abrarrotes</option>
						<option value="bebidas">Bebidas</option>
						<option value="cuidado">Cuidado Personal</option>
						<option value="desayuno">Desayuno</option>
						<option value="embutidos">Embutidos</option>
						<option value="enlatados">Enlatados</option>
						<option value="gg">Galletas y golosinas</option>
						<option value="licores">Licores</option>
						<option value="limpieza">Limpieza</option>
						<option value="sp">Snacks y Piqueos</option>
					</select>
					<input type="text" class="input-medium search-query span2 row" name="textoBusquedaPrincipal" placeholder="Búsqueda" id="buscon"></input>
					<a href="#" class="btn btn-danger"><i class ="icon-search pull-left" id="icBus"></i></a>
				</form>
			</div>
			
		</div>
	</div>
</header>
-->