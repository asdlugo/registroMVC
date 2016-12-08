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
			<p class="title subtitulos rounded_borders">Unidad de Producci&oacute;n</p>
				<form action="sectores.php" class="centered" method="POST">
					<div class="campo_left">
						Nombre de la UPA
						<input type="text" placeholder="Nombre" name="nombre" required>
					</div>
					<div class="campo_center">
							Estado
							<input type="text" placeholder="Estado" name="estado" required>
					</div>
					<div class="campo_right">
							Municipio
							<input type="text" placeholder="Municipio" name="municipio" required>
					</div>
					<div class="campo_left">
							Parroquia
							<input type="text" placeholder="Parroquia" name="parroquia" required>
					</div>
					<div class="campo_center">
							Centro Poblado
							<select name="grado_instruccion" style="color:#035013">
							<option value="">---   SELECCIONE   ---</option>
							<option value="Sin Grado de Instrucci&oacute;n">Sin Grado de Instrucci&oacute;n</option>
							<option value="Basica (Sin culminar)">Basica (Sin culminar)</option>
							<option value="Basica (Culminado)">Basica (Culminado)</option>
							<option value="Bachillerato (Sin Culminado)">Bachillerato (Sin Culminado)</option>
							<option value="Bachillerato (Culminado)">Bachillerato (Culminado)</option>
							<option value="TSU (Sin Culminado)">TSU (Sin Culminado)</option>
							<option value="TSU (Culminado)">TSU (Culminado)</option>
							<option value="Universitario (Sin Culminado)">Universitario (Sin Culminado)</option>
							<option value="Universitario (Culminado)">Universitario (Culminado)</option>
						</select>
					</div>
					<div class="campo_right">
						Caserio
						<textarea  name="datos_asoc" style="color:#035013"></textarea>
					</div>
					<div class="campo_left">
						Sector
						<input type=text"" value=""placeholder="" name="sector" required>
					</div>
					<div class="campo_center">
						 Direcci&oacuten 
	             	<textarea  name="datos_asoc" style="color:#035013"></textarea>
					</div>
					<button type="button" onclick="location.href='../index.php'">Cancelar</button>
		    			<button type="submit">Siguiente</button>
				</form>				
</div>
	<footer>
		<?php include 'general/footer_interno.html'?>
	</footer>
</body>
