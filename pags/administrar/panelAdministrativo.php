<?php if(isset($_SESSION['objUsuarioEmpresa'])){
	if($_SESSION['objUsuarioEmpresa']['nombreGrupo']=='administrador'){ ?>
		
			<div class="pnl_adm_div">
				<a href="index.php?pag=userList"><img src="img/icono_user.png" alt="usuario"/></a>
				<h4>Usuarios</h4>
			</div>
			<div class="pnl_adm_div">			
				<a href="index.php?pag=productList"><img src="img/icono_producto_2.png" alt="producto"/></a>
				<h4>Productos</h4>
			</div>



<?php }
	}else{
	header('location: index.php');
	} ?>