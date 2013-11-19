<div id="" class="container-fluid">
	
	<h2>Centro de ayuda</h2>
	<div class="row-fluid">
		<div class="span2" id="">
			
			<ul id="temasAyuda" class="unstyled nav nav-list nav-stacked">
				<li  ><a href="index.php?pag=help&seccion=beneficios" >Beneficios</a></li>
				<li ><a href="index.php?pag=help&seccion=comprar" >Comprar</a></li>
				<li ><a href="index.php?pag=help&seccion=formasPago" >Formas de Pago</a></li>
				<li ><a href="index.php?pag=help&seccion=preguntasFrecuentes" >Preguntas Frecuentas</a></li>
				<li ><a href="index.php?pag=help&seccion=ayudaRegistro" >Registro</a></li>
			</ul>
		</div>
		
		<div class="span10">
			
			<? include ("/procesos/validarAyuda.php");?>
			
		</div>
	
	</div>
    <div class="clear"></div>
	
	<div class="label-input" id="contenedor-botones-ayuda">
		<button class="btn btn-info"/>Volver</button> 
		<button class="btn btn-info"/>Contactarse con la empresa</button>
		<button class="btn btn-info"/>Seguir comprando"</button>
	</div>
</div>