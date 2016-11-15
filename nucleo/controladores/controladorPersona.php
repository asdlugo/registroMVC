<?php 

include('nucleo/modelos/Persona.php');

$datos = array($_POST);

$persona = new Persona;

$persona->insertar($datos);

include('vistas/contenido/persona.php');