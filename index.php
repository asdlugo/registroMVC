<?php
error_reporting(E_ALL);
ini_set('display_errors', 'On');
include_once('nucleo/controladores/controladorRouter.php');

controladorEnrutador::cargarControlador($_GET['vista']);
