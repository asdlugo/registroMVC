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
			<p class="title subtitulos rounded_borders">Producción de Huevos</p>
				<form action="" class="centered" method="POST">
					<div class="campo_left">
						Rubros
						<select name="rubro" style="color:#035013">
							<option value="">---   SELECCIONE   ---</option>
							<option value="Patos">Patos</option>
							<option value="Patas">Patas</option>
						</select>					
					</div>
					<div class="campo_center">
						Cantidad
						<input type="number" min="1" max="100000" step="1" value="1" placeholder="" name="cant_r" required>
					</div>
					<div class="campo_right">
						N° Ponedoras
						<input type="number" min="1" max="100000" step="1" value="1" placeholder="" name="cant_r" required>
					</div>
					<div class="campo_left">
						
					</div>
					<button type="button" onclick="location.href='../index.php'">Cancelar</button>
		    			<button type="submit">Siguiente</button>
				</form>				
		</div>
	</div>

	<footer>
		<?php include 'general/footer_interno.html'?>
	</footer>
</body>
