<?php
	$address='pags/defaultPag.php';
		if(!isset($_GET['pag'])){
			$address='pags/defaultPag.php';
		}else{
			$pag=$_GET['pag'];
			switch($pag){
				case 'nuevoProducto':
					$address = 'pags/administrar/nuevoProducto.php';
					break;
				case 'products':
					$address = 'pags/products.php';
					break;
				case 'result' :
					$address = 'pags/resultadoBusqueda.php';
					break;
				case 'regA':
					$address = 'pags/registroA.php';
				break;
				case 'registrate': //Registrarse
					$address='pags/registrarAcceder/registrate.php';
				break;
				case 'acceder': //Acceder
					$address='pags/registrarAcceder/formularioLoginRegistro.php';
				break;
				case 'car':   //Carrito
					$address='pags/carrito/carrito.php';
				break;
				
				case 'help': //Ayuda
					$address='pags/ayuda/seccionAyuda.php';
				break;
				
				case 'abrt': //Abarrotes
					$address='pags/abarrotes/abarrotes.php';
				break;
				case 'beb': //Bebidas
					$address='pags/bebidas/bebidas.php';
				break;
				case 'cuiPer': //Cuidado Personal
					$address='pags/cuidadoPersonal/cuidadoPersonal.php';
				break;
				case 'beb': //Bebidas
					$address='pags/bebidas/bebidas.php';
				break;
				case 'desy': //Desayuno
					$address='pags/desayuno/desayuno.php';
				break;
				case 'embt': //Embutidos
					$address='pags/embutidos/embutidos.php';
				break;
				case 'eltds': //Enlatados
					$address='pags/enlatados/enlatados.php';
				break;
				case 'glltgsn': //Galletas y golosinas
					$address='pags/galletasGolosinas/galletasGolosinas.php';
				break;
				case 'licrs': //Licores
					$address='pags/licores/licores.php';
				break;
				case 'lmpz': //Limpieza
					$address='pags/limpieza/limpieza.php';
				break;
				case 'snkspqs': //Snacks  y piqueos
					$address='pags/snacksPiqueos/snacksPiqueos.php';
				break;
				case 'nosotros': //Nosotros
					$address='pags/nosotros.php';
				break;
				case 'contactenos': //Contactenos
					$address='pags/contactenos.php';
				break;
				case 'infoLegal': //Informacion Legal
					$address='pags/informacionLegal.php';
				break;
				case 'admin':
					$address='pags/administrar/panelAdministrativo.php';
				break;
				case 'userList':
					$address='pags/administrar/listaUsuarios.php';
				break;
				case 'productList':
					$address='pags/administrar/listaProductos.php';
				break;
				case 'viewProducts':
					$address='pags/administrar/verDetallesProductos.php';
				break;
				}
		}
		include($address);
?>