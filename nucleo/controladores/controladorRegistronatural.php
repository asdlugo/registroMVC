<?php 
error_reporting(E_ALL);
	ini_set('display_errors', 'On');
if($_SERVER['REQUEST_METHOD'] == 'POST')
{
	require('nucleo/modelos/Persona.php');
	$persona = new Persona();
	$persona->insertarNatural($_POST);
	header("Location: http://localhost/registroMVC/index.php");
}else
{
	require('vistas/contenido/persona.php');
}