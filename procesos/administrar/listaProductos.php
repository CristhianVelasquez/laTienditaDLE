<?php 
session_start();
unset($_SESSION["objUsuarioEmpresa"]);
unset($_SESSION["autenticado"]);
header("Location: ../index.php");
?>