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
			<p class="title subtitulos rounded_borders">Producción de Codorniz</p>
				<form action="" class="centered" method="POST">
					<div class="campo_left">
						Tipo de Explotación
						<select name="rubro" style="color:#035013">
							<option value="">---   SELECCIONE   ---</option>
							<option value="Grandes">Grandes</option>
							<option value="Medianos">Medianos</option>
							<option value="Pequeños">Pequeños</option>
						</select>						
					</div>
					<div class="campo_center">
						Razas
						<select name="Razas" style="color:#035013">
							<option value="">---   SELECCIONE   ---</option>
							<option value="Coturvix coturvix">Coturvix coturvix</option>
							<option value="Coturvix Japónica">Coturvix Japónica</option>
							
							
						</select>
					</div>
					<div class="campo_right">
						Clase Etaria
						<select name="clase_etaria" style="color:#035013">
							<option value="">---   SELECCIONE   ---</option>
							<option value="Cr&iacutea">Cr&iacutea</option>
							<option value="Engorde">Engorde</option>
							<option value="Postura">Postura</option>
						</select>
					</div>
					<div class="campo_left">
						Edificaciones
						<select name="Edificaciones" style="color:#035013">
							<option value="">---   SELECCIONE   ---</option>
							<option value="Vivienda Principal">Vivienda Principal</option>
							<option value="Vivienda para Obreros">Vivienda para Obreros</option>
							<option value="Galp&oacuten">Galp&oacuten</option>
							
						</select>
					</div>
					<div class="campo_center">
						Comercialización
					<select name="comercializacion" style="color:#035013">
							<option value="">---   SELECCIONE   ---</option>
							<option value="En pie">En pie</option>
							<option value="Canal enviscerado">Canal enviscerado</option>
							<option value="Canal enviscerado refrigerado o congelados">Canal enviscerado refrigerado o congelados</option>
						</select>
					</div>
					<div class="campo_right">
						Plan Sanitario
						<select name="plan_sanitario" style="color:#035013">
							<option value="">---   SELECCIONE   ---</option>
							<option value="New Castle">New Castle</option>
							<option value="Gumboro">Gumboro</option>
							<option value="Mareck">Mareck</option>
						</select>
					</div>
					<div class="campo_left">
						Maquinaria y Equipo
						<select name="maquinaria_equipos" style="color:#035013">
							<option value="">---   SELECCIONE   ---</option>
							<option value="">Jaula para Colonia</option>
							<option value="">Jaulas Individuales</option>
							<option value="">Baterias(Jaulas)</option>
							<option value="">Comederos</option>
							<option value="">Incubadora</option>
						</select>
					</div>
					<div class="campo_center">
						Distribuci&oacute;n
						<select name="tipo_explotacion" style="color:#035013">
							<option value="">---   SELECCIONE   ---</option>
							<option value="A puerta de granja">A puerta de granja</option>
							<option value="Restaurantes">Restaurantes</option>
							<option value="Carnicer&iacuteas">Carnicer&iacuteas</option>
							<option value="Otros">Otros</option>
						</select>
					</div>
					<div class="campo_right">
						Instalaciones
						<select name="instalaciones" style="color:#035013">
							<option value="">---   SELECCIONE   ---</option>
							<option value="Área Administrativa ">Área Administrativa</option>
							<option value="Área de manejo de huevo">Área de manejo de huevo</option>
							<option value="Área de Matanza">Área de Matanza</option>
							<option value="Zona de Reproductores">Zona de Reproductores</option>
							<option value="Zona de Engorde">Zona de Engorde</option>
							<option value="Silo">Silo</option>
							<option value="Tanque de Agua">Tanque de Agua</option>
							<option value="Depósito">Depósito</option>
							
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
