<?php 
error_reporting(E_ALL);
ini_set('display_errors', 'On');

if($_SERVER['REQUEST_METHOD'] == 'POST')
{
	require('nucleo/modelos/Persona.php');
	$persona = new Persona();
	$persona->insertarNatural($_POST);
	header("Location:?vista=solicitudregistro");
}else
{
	require('vistas/persona/persona.html');
}
