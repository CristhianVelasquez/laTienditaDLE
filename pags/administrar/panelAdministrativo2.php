<?php if(isset($_SESSION['objUsuarioEmpresa'])){
	if($_SESSION['objUsuarioEmpresa']['nombreGrupo']=='administrador'){ ?>
		<div class="">
			<ul>
			<li><a href="index.php?pag=userList">Usuarios</a></li>
			<li><a href="index.php?pag=productList">Productos</a></li>
			</ul>
		</div>

<?php }
	}else{
	header('location: index.php');
	} ?>