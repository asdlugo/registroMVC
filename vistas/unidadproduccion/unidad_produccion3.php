<html>
<!DOCTYPE html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
	<title>RUNOPPA</title>
	<link rel="shortcut icon" href="../images/icono.png">
	<link rel="stylesheet" type="text/css" href="../css/mainstyle.css">
	<link href="../css/bootstrap.min.css" rel="stylesheet">
	<link href="../css/style.css" rel="stylesheet">
		
	<script type="text/javascript" src="../js/bootstrap.min.js"></script>
	<script type="text/javascript" src='../js/jquery.min.js'></script>
	
</head>

<body>

	<header>
		<?php include 'general/header_interno.html'?>
	</header>
	
	<div class="container">
	    <div class="subcolumna subcolumna2 rounded_borders"> 
			<a href="pef/ayuda.pdf"><img class="info" title="Ayuda" src="../images/info.png"></a>
			<p class="title subtitulos rounded_borders">Informacón de la Unidad de Producci&oacute;n</p>
				<form action="sectores.php" class="centered" method="POST">
					<div class="campo_left">
						Capacidad de Exportacion
					<select name="grado_instruccion" style="color:#035013">
				      <option value="">---SELECCIONE---</option>
				      <option value="">SI</option>
				      <option value="">NO</option>
			      </select>
					</div>
				    <div class="campo_center">
						Necesidad de Importación 
					<select name="grado_instruccion" style="color:#035013">
				      <option value="">---SELECCIONE---</option>
				      <option value="">SI</option>
				      <option value="">NO</option>
			         </select>
					</div>
					<div class="campo_right">
						¿Se Encuentra Adscrita algún Organismo?
					<select name="grado_instruccion" style="color:#035013">
				      <option value="">---SELECCIONE---</option>
				      <option value="">SI</option>
				      <option value="">NO</option>
			       </select>
					</div>
					<div class="campo_left">
					     Tipo de Organismo
				 <select name="grado_instruccion" style="color:#035013">
				      <option value="">---SELECCIONE---</option>
				      <option value="">PUBLICA</option>
				      <option value="">PRIVADA</option>
				</select>
					</div>
					<div class="campo_center">
						RIF del Organismo
						<input type="text" placeholder="Nombre" name="nombre" required>	
					</div>
					<div class="campo_right">
						Nombre del Organismo
					<input type="text" placeholder="Nombre" name="nombre" required>
					</div>
					
					<button type="button" onclick="location.href='../index.php'">Cancelar</button>
		    			<button type="submit">Siguiente</button>
				</form>				
</div>
	<footer>
		<?php include 'general/footer_interno.html'?>
	</footer>
</body>
