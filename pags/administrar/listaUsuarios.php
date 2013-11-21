<?php
include('procesos/config.php');
include('procesos/funciones.php');
$query="SELECT * FROM usuario usu,empresa emp WHERE usu.codigoEmpresa=emp.codigoEmpresa";
$respuestaUsuario=consulta_bd_fetchByIndex($query,$config);
?>

<input type="text" placeholder="Digite aqu&iacute;..."/>
<input type="submit" value="Buscar"/>
<form action="" method="">
	<?php if(count($respuestaUsuario)>0){?>
	<table>
	<tr>
		<th>C&oacute;digo Usuario</th>
		<th>Raz&oacute;n Social</th>
		<th>RUC</th>
	</tr>
	<?php foreach($respuestaUsuario as $usu){?>
	<tr>
		<td><?php echo $usu['codigoUsuario']?></td>
		<td><?php echo $usu['razonSocial']?></td>
		<td><?php echo $usu['ruc']?></td>
	</tr>
	<?php }?>
	
	</table>
	<?php }else{?>
	<p>No existen usuarios registrados actualmente.</p>
	<?php }?>
</form>