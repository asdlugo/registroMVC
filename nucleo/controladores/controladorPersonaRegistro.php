<?php 
error_reporting(E_ALL);
ini_set('display_errors', 'On');

	$data = array(
		'tipo_documento' 	=> '1' ,
		'cedula' 			=> '20309251' , 
		'nombre' 			=> 'aefjsjkd' ,
		'apellido' 			=> 'aetjyhkfyulofy' ,
		'correo' 			=> 'asdrubal.a.l@gmail.com' ,
		'telefono' 			=> '453453' ,
		'edo_civil' 		=> '1' ,
		'fecha_nac' 		=> '2016-11-10' ,
		'genero' 			=> '1' ,
		'grado_instruccion' => '1' ,
		'vive_up' 			=> 'true');
	
	require('../modelos/Persona.php');

	$persona = new Persona();

	$persona->insertar($data);




/*$datos = array($_POST);

if ($_POST) 
{
	$data = array();

	foreach ($_POST as $key => $value)
	{
		echo "variable: " . $key . " valor " . $value . '<br>';
	}
}*/
