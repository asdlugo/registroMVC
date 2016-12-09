<?php 
if($_SERVER['REQUEST_METHOD'] == 'POST')
{
	require('nucleo/modelos/Persona.php');
	$persona = new Persona();
	$persona->insertarJuridico($_POST);
	header("Location: http://localhost/registroMVC/index.php");
}else
{
	require('vistas/persona/juridico1.php');
}