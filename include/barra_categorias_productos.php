
<!--<div class="navbar navbar-inverse navbar-fixed-top" id="categorias">
   <div class="navbar-inner">
      <div class="container">
         <button type="button" class="btn btn-navbar collapsed" data-toggle="collapse" data-target=".nav-collapse">
         <span class="icon-bar"></span>
         <span class="icon-bar"></span>
         <span class="icon-bar"></span>
         </button>
         <a class="brand" id="logoNombre" href="#">LTDLE</a>
        <div class="nav-collapse collapse" style="height: 0px;">
            <ul class="nav">
               <li class=""><a href="?php echo $_SERVER['SCRIPT_NAME'];?>?pag=abrt">Abarrotes</a></li>
               <li class=""><a href="?php echo $_SERVER['SCRIPT_NAME'];?>?pag=beb">Bebidas</a></li>
               <li class=""><a href="?php echo $_SERVER['SCRIPT_NAME'];?>?pag=cuiPer">Cuidado personal</a></li>
               <li class=""><a href="?php echo $_SERVER['SCRIPT_NAME'];?>?pag=desy">Desayuno</a></li>
               <li class=""><a href="?php echo $_SERVER['SCRIPT_NAME'];?>?pag=embt">Embutidos</a></li>
               <li class=""><a href="?php echo $_SERVER['SCRIPT_NAME'];?>?pag=eltds">Enlatados</a></li>
               <li class=""><a href="?php echo $_SERVER['SCRIPT_NAME'];?>?pag=glltgsn">Galletas y Golosinas</a></li>
               <li class=""><a href="?php echo $_SERVER['SCRIPT_NAME'];?>?pag=licrs">Licores</a></li>
               <li class=""><a href="?php echo $_SERVER['SCRIPT_NAME'];?>?pag=lmpz">Limpieza</a></li>
               <li class=""><a href="?php echo $_SERVER['SCRIPT_NAME'];?>?pag=snkspqs">Snacks y Piqueos</a></li>
		    </ul>
        </div>
      </div>
   </div>
</div>--> 
<div class="span3 bs-docs-sidebar">
	<ul class="nav nav-list bs-docs-sidenav affix listaLateral">
		<?php
			
			$result = "SELECT * FROM categoriaproducto"; 
			$response = consulta_bd_fetchByIndex($result,$config);
			foreach($response as $usu){
				
				echo "<li><a href='";
				echo $_SERVER['SCRIPT_NAME'];
				echo "?pag=products&subpag=" . $usu['nombre'] . "'><i class='icon-chevron-right'></i>" . $usu['nombre'] . "</a>";
				
				echo '<ul class="sublista nav">';
				
				$result1 = "SELECT * FROM subcategoriaproducto where codigoCategoria =" . $usu['codigoCategoria'];
				$subcategoria = consulta_bd_fetchByIndex($result1,$config);
				foreach($subcategoria as $usu1){
					echo '<li><a class="text-error" href="index.php?pag=products&subpag='.$usu['nombre'].'#'.$usu1["nombre"].'">' . $usu1["nombre"] . '</a></li>';
				};
				
				echo '</ul>';

			}; 
		?>
		<!--<li class=""><a href="<?php //echo $_SERVER['SCRIPT_NAME'];?>?pag=products&subpag=abarrotes"><i class="icon-chevron-right"></i> Abarrotes</a>
			<ul class="sublista nav nav-list">
				<li><a href="#btn-dropdowns-single">Single button dropdowns</a></li>
				<li><a href="#btn-dropdowns-split">Split button dropdowns</a></li>
				<li><a href="#btn-dropdowns-sizing">Sizing</a></li>
				<li><a href="#btn-dropdowns-dropup">Dropup variation</a></li>
			</ul>
		</li>
		<li ><a href="<?php// echo $_SERVER['SCRIPT_NAME'];?>?pag=products&subpag=bebidas"><i class="icon-chevron-right"></i> Bebidas</a></li>
		<li ><a href="<?php// echo $_SERVER['SCRIPT_NAME'];?>?pag=products&subpag=cuidado personal"><i class="icon-chevron-right"></i> Cuidado personal</a></li>
		<li ><a href="<?php //echo $_SERVER['SCRIPT_NAME'];?>?pag=products&subpag=desayuno"><i class="icon-chevron-right"></i> Desayuno</a></li>
		<li ><a href="<?php //echo $_SERVER['SCRIPT_NAME'];?>?pag=products&subpag=embutidos"><i class="icon-chevron-right"></i> Embutidos</a></li>
		<li ><a href="<?php //echo $_SERVER['SCRIPT_NAME'];?>?pag=products&subpag=enlatados"><i class="icon-chevron-right"></i> Enlatados</a></li>
		<li ><a href="<?php //echo $_SERVER['SCRIPT_NAME'];?>?pag=products&subpag=galletas y golosinas"><i class="icon-chevron-right"></i> Galletas y Golosinas</a></li>
		<li ><a href="<?php //echo $_SERVER['SCRIPT_NAME'];?>?pag=products&subpag=licores"><i class="icon-chevron-right"></i> Licores</a></li>
		<li ><a href="<?php //echo $_SERVER['SCRIPT_NAME'];?>?pag=products&subpag=limpieza"><i class="icon-chevron-right"></i> Limpieza</a></li>
		<li ><a href="<?php //echo $_SERVER['SCRIPT_NAME'];?>?pag=products&subpag=snacks y piqueos"><i class="icon-chevron-right"></i> Snacks y Piqueos</a></li>
	-->
	</ul>
</div>