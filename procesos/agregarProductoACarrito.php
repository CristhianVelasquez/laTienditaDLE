<?php 
session_start();
$result = json_decode("{}",true);
//$_SESSION['carrito'] = array();
		$arreglo= array();
		//unset($_SESSION['carrito']); //PARA RESETEAR CARRITO
		if (isset($_SESSION['carrito'])){
		  $arreglo=$_SESSION['carrito'];
		}
		
//FUNCIONES Y CLASES
class product{
	var $quantity;
	var $productCode;
	var $price;
	var $name;
	var $capacity;

	function product($newcProduct,$newName,$newCapacity,$newQuantity,$newPrice) {
		$this->productCode=$newcProduct;
        $this->quantity=$newQuantity*1;
		$this->price=$newPrice;
		$this->name=$newName;
		$this->capacity=$newCapacity;
    }
	function productCodeExists($producto) {
		$sw=false;
		if($this->productCode==$producto->productCode){
			$sw=true;
		}
		return $sw;
    }
	function sumPrice($adicional){
		$this->quantity=$this->quantity+$adicional;
		return	$this->quantity;
	}
}
function agregarProducto($productoNuevo){
	global $arreglo;
	$sePuedeAgregar=true;
	$count=0;
	$indiceProductoExistente=0;
	foreach($arreglo as $a=>$product){
		$existe=$product->productCodeExists($productoNuevo);
		if($existe==true){
			$sePuedeAgregar=false;
			$indiceProductoExistente=$a;
		}		
	}
	//SE AGREGA NUEVO PRODUCTO
	if($sePuedeAgregar){
		if($productoNuevo->quantity >=0){
		array_push($arreglo,$productoNuevo);
		}else{
			$sePuedeAgregar=false;
		}
	}else{
	//SE INCREMENTA O MODIFICA LA CANTIDAD DE UN PRODUCTO EXISTENTE
			$nuevaCantidad=$arreglo[$indiceProductoExistente]->sumPrice($productoNuevo->quantity);
			//SE VERIFICA SI EL PRODUCTO DEBE SEGUIR EXISTIENDO EN ARRAY
			if($arreglo[$indiceProductoExistente]->quantity <=0){
				//SE QUITA PRODUCTO DE ARRAY
				unset($arreglo[$indiceProductoExistente]);
			}
			$sePuedeAgregar=true;
		}
	return $sePuedeAgregar;
}
//AQUI COMIENZA
$data;
if($_SERVER['REQUEST_METHOD']!='POST'){
		$mensaje='Metodo de acceso no permitido.';
}else{
	if(stripslashes($_SERVER['CONTENT_TYPE'])=="application/x-www-form-urlencoded"){
		$data = json_decode(json_encode($_POST), true);
	}elseif(stripslashes($_SERVER['CONTENT_TYPE'])=='text/plain;charset=UTF-8'){
		$data= json_decode(stripslashes($HTTP_RAW_POST_DATA), true);
	}
	
	if(isset($data['codigoProducto']) && isset($data['cantidad']) && isset($data['precio'])){
			$codigoProducto=$data['codigoProducto'];
			$cantidad=$data['cantidad'];
			$precio = $data['precio'];
			$nombre = $data['nombre'];
			$capacidad = $data['capacidad'];
		if(is_numeric($cantidad)){
			//PRODUCTOS PRUEBA
			$nuevo=new product($codigoProducto,$nombre,$capacidad,$cantidad,$precio);
			//CARGA DE PRODUCTO A ARRAY
			$seAgrego=agregarProducto($nuevo);
			// var_dump($_SESSION['carrito']);
			if($seAgrego){
				$mensaje="Producto cargado a su carrito";
			}else{
				$mensaje="No se pudo carga Producto a su carrito";
			}
		}else{
			$mensaje="La cantidad debe de ser un valor num&eacute;rico";
		}
	}else{
			$mensaje="varibles no especificadas";
		}
	}
	$_SESSION['carrito']=$arreglo;
	$response=array(
	"mensajeError" => $mensaje
	);
	$result['data'] = $_SESSION['carrito'];
	$result['mensaje'] = $mensaje;
	echo json_encode($result);
?>