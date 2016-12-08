<?php
	$bd_host="localhost";
	$bd_usuario= "jonelle";
	$bd_password = "030213";
	$bd_base = "pedidos";
	$con = mysql_connect($bd_host,$bd_usuario,$bd_password,$bd_base) or die ("Error conectando la base de datos");
 	mysql_select_db($bd_base,$con);
?>
