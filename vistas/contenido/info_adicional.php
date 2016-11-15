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
		<?php include("general/header_interno.html") ?>
	</header>
	
	<div class="container">
	<div class="subcolumna subcolumna2 rounded_borders"> 
		<p class="title"> Informaci&oacute;n Adicional </p>
		<form action="" class="centered" method="POST">
			<select name="grado_instruccion">
				<option value="">---SELECCIONE---</option>
				<option value="">Sin Grado de Instruccion</option>
				<option value="">Basica sin Culminar</option>			
				<option value="">Basica Culminado</option>	
				<option value="">Bachillerato sin Culminar</option>			
				<option value="">Bachillerato Culminado</option>			
				<option value="">TSU sin Culminar</option>			
				<option value="">TSU Culminado</option>			
				<option value="">Universitario sin Culminar</option>			
				<option value="">Universitario Culminado</option>			
			</select>	
			<input type="text" placeholder="Datos de la Organizaci&oacute;n" name="datos_org" required>	
             		<br><br>
			<input type="text" placeholder="Pueblo Ind&iacute;gena" name="pueblo" required>	
		       	<input type="text" placeholder="Comunidad Ind&iacute;gena" name="Comunidad" required>	
           		<br> <br>
	             	<input type="text" placeholder="Datos de Asociaci&oacute;n" name="datos_asoc"><br><br>
			<div class="text">Direccion de habitaci&oacute;n</div>
           		<br>
			<input type="text" placeholder="Entidad" name="entidad" required>	
           		<input type="text" placeholder="Municipio" name="municipio" required>	
			<br><br>
           		<input type="text" placeholder="Parr&oacute;quia" name="parroquia" required>	
            		<input type="text" placeholder="Persona Referencial" name="Persona Referencial" required>	
           		<br>			<button type="button" onclick="location.href='../index.html'">Cancelar</button>
			<button type="submit" value="Guardar">Guardar</button>
		</form>	
	</div>	
	</div>

	<footer>
		<?php include 'general/footer_interno.html'?>
	</footer>	
</body>
</html> 

