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
			<p class="title subtitulos rounded_borders">Sector Cun&iacute;cola</p>
				<form action="" class="centered" method="POST">
					<div class="campo_left">
						Rubro
						<select name="rubro" style="color:#035013">
							<option value="">---   SELECCIONE   ---</option>
							<option value="">Bovino</option>
							<option value="">Bufalino</option>
							<option value="">Caprino</option>
							<option value="">Ovino</option>
						</select>					
					</div>
					<div class="campo_center">
						Cantidad
						<input type="number" placeholder="" name="cant_cu" required>
					</div>
					<div class="campo_right">
						Clase Etaria
						<select name="clase_etaria" style="color:#035013">
							<option value="">---   SELECCIONE   ---</option>
							<option value="">Hembra Lactante</option>
							<option value="">Gestando y Lactando</option>
							<option value="">Hembras Vac&iacute;as</option>
							<option value="">Gazapos</option>
							<option value="">Reemplazo</option>
							<option value="">Engorde</option>
							<option value="">Machos Reproductores</option>
						</select>
					</div>
					<div class="campo_left">
						Cantidad (CE)
						<input type="number" placeholder="" name="cant_cu2" required>
					</div>
					<div class="campo_center">
						Tipo Destino
						<select name="tip_destino" style="color:#035013">
							<option value="">---   SELECCIONE   ---</option>
							<option value="">Puerta de Granja</option>
							<option value="">Restaurantes</option>
							<option value="">Carnicerias</option>
							<option value="">En Pie</option>
							<option value="">Beneficados</option>
						</select>
					</div>
					<div class="campo_right">
						Plan Sanitario
						<select name="plan_sanitario" style="color:#035013">
							<option value="">---   SELECCIONE   ---</option>
							<option value="">Micoplasma</option>
							<option value="">Vitaminas</option>
							<option value="">Aftosa</option>
							<option value="">Parvuvirosis</option>
							<option value="">Desparasitaci&acute;n</option>
						</select>
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
