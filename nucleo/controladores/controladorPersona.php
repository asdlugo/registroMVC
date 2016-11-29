<?php 
error_reporting(E_ALL);
ini_set('display_errors', 'On');



if(isset($_POST["submit"]))
{
	require('nucleo/modelos/Persona.php');
	
	$persona = new Persona();

	$persona->insertar($_POST);
	
}else{
	require('vistas/contenido/persona.php');
}




/*$datos = array($_POST);

if ($_POST) 
{
	$data = array();

	foreach ($_POST as $key => $value)
	{
		echo "variable: " . $key . " valor " . $value . '<br>';
	}
}*/
