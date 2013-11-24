
<div class="span3 bs-docs-sidebar">
	<ul class="nav nav-list bs-docs-sidenav affix listaLateral">
		<?php
			$result = "SELECT * FROM categoriaproducto"; 
			$response = consulta_bd_fetchByIndex($result,$config);
			foreach($response as $aux){
				
				echo "<li><a href='";
				echo $_SERVER['SCRIPT_NAME'];
				echo "?pag=products&subpag=" . $aux['nombre'] . "'><i class='icon-chevron-right'></i>" . $aux['nombre'] . "</a>";
				
				echo '<ul class="sublista nav">';
				
				$subCat = "SELECT * FROM subcategoriaproducto where codigoCategoria =" . $aux['codigoCategoria'];
				$subcategoria = consulta_bd_fetchByIndex($subCat,$config);
				foreach($subcategoria as $aux1){
					echo '<li><a class="text-error" href="';
					echo $_SERVER['SCRIPT_NAME'];
					echo "?pag=products&subpag=".$aux['nombre'].'#'.$aux1["nombre"].'">' . $aux1["nombre"] . '</a></li>';
				};
				echo '</ul>';

		}; 
		?>
		
	</ul>
</div>