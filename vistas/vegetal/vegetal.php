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
			<p class="title subtitulos rounded_borders">Sector Vegetal</p>
				<form action="" class="centered" method="POST">
					<div class="campo_left">
						Ciclo
						<select name="ciclo" style="color:#035013">
							<option value="">---   SELECCIONE   ---</option>
							<option value="Corto">Corto</option>
							<option value="Permanente">Permanente</option>
							<option value="Semipermanente">Semipermanente</option>
							<option value="Permanente">Permanente</option>
							
						</select>
					</div>
					<div class="campo_center">
						Rubro
						<select name="rubro" style="color:#035013">
							<option value="">---   SELECCIONE   ---</option>
							<option value="Soltero">Cebolla</option>
							<option value="Casado">Cebollin</option>
							<option value="Viudo">Lechuga</option>
							<option value="Divorciado">Papa</option>
							<option value="Divorciado">Pimenton</option>
						</select>
					</div>
					<div class="campo_right">
						Tipo de Ambiente
						<select name="tipo_ambiente" style="color:#035013">
							<option value="">---   SELECCIONE   ---</option>
							<option value="Soltero">Cebolla</option>
							<option value="Casado">Cebollin</option>
							<option value="Viudo">Lechuga</option>
							<option value="Divorciado">Papa</option>
							<option value="Divorciado">Pimenton</option>
						</select>
					</div>
					<div class="campo_left">
						Descipci&oacute;n de Riego
						<select name="des_riego" style="color:#035013">
							<option value="">---   SELECCIONE   ---</option>
							<option value="Soltero">Cebolla</option>
							<option value="Casado">Cebollin</option>
							<option value="Viudo">Lechuga</option>
							<option value="Divorciado">Papa</option>
							<option value="Divorciado">Pimenton</option>
						</select>

					</div>
					<div class="campo_center">
						Superficie Hectarea
						<input type="number" id="number" min="0.00" max="100000" step="0.01" value="0.00"placeholder="" name="super_t" required>
					</div>
					<div class="campo_right">
						Tipo de Riego
						<input type="text" placeholder="Tipo de Riego" name="tip_riego" required>
					</div>
					<div class="campo_left">
						Fecha de Siembra
						<input type="date" placeholder="" name="fecha_siembra" required>
					</div>
					<div class="campo_center">
						Estatus de Siembra
						<select name="estatus_siembra" style="color: #035013;">
							<option value="">---   SELECCIONE   ---</option>
							<option value="Soltero">Agua</option>
							<option value="Casado">Luz</option>
							<option value="Viudo">Viudo</option>
							<option value="Divorciado">Divorciado</option>
						</select>
					</div>
					<div class="campo_right">
						Renovaci&oacute;n de Siembra
						<input type="date" placeholder=""  name="fecha_renovacion" required>
					</div>
					<div class="campo_left">
						Fecha de Cosecha
						<input type="date" placeholder=""  name="fecha_cosecha" required>
					</div>
					<div class="campo_center">
						Tipo de Destino
						<input type="text" placeholder="" name="tip_destino" required>
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
