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
			<p class="title subtitulos rounded_borders">Subsector Porcino</p>
				<form action="" class="centered" method="POST">
					<div class="campo_left">
						Rubro
						<select name="rubro" style="color:#035013">
							<option value="">---   SELECCIONE   ---</option>
							<option value="Cerda Madre">Cerda Madre</option>
							<option value="Lech&oacute;n">Lech&oacute;n</option>
							<option value="Verraco">Verraco</option>
						</select>					
					</div>
					<div class="campo_center">
						Clase Etaria
						<select name="clase_etaria" style="color:#035013">
							<option value="">---   SELECCIONE   ---</option>
							<option value="Madre Gestante">Madre Gestante</option>
							<option value="Madre Lactante">Madre Lactante</option>
							<option value="Verracos">Verracos</option>
							<option value="Cerda Reemplazo">Cerda Reemplazo</option>
							<option value="Lechon Lactando">Lechon Lactando</option>
							<option value="Lechon Destetado">Lechon Destetado</option>
							<option value="Lechon (Iniciacion)">Lechon (Iniciacion)</option>
							<option value="Lechon (Crecimiento,Desarrollo)">Lechon (Crecimiento,Desarrollo)</option>
							<option value="Lechon (Engorde &oacute; Terminaci&oacute;n)">Lechon (Engorde &oacute; Terminaci&oacute;n)</option>
						</select>
				   </div>
					<div class="campo_right">
						Tipo de Explotación
						<select name="tipo_explotacion" style="color:#035013">
							<option value="">---   SELECCIONE   ---</option>
							<option value="Granjas de Gen&eacute;tica">Granjas de Gen&eacute;tica</option>
							<option value="Granja (iniciaci&oacute;n,Crecimiento)">Granja (iniciaci&oacute;n,Crecimiento)</option>
							<option value="Granja Ciclo Completo">Granja Ciclo Completo</option>
							<option value="Granja (Crias,Recrias)">Granja (Crias,Recrias)</option>
							<option value="Granja (Desarrollo, Terminaci&oacute;n">Granja (Desarrollo, Terminaci&oacute;n</option>
							<option value="Multi-sitios">Multisitios</option>
						</select>
					</div>
					<div class="campo_left">
						Comercialización
						<select name="comercializacion" style="color:#035013">
							<option value="">---   SELECCIONE   ---</option>
							<option value="Matadero">Matadero</option>
							<option value="Reproductores">Reproductores</option>
							<option value="Lech&oacute;n">Lech&oacute;n</option>
						</select>
					</div>
						
						
					<div class="campo_center">
						Plan Sanitario
						<select name="comercializacion" style="color:#035013">
							<option value="">---   SELECCIONE   ---</option>
							<option value="Mycoplasma">Mycoplasma</option>
							<option value="Desparasitantes">Desparasitantes</option>
							<option value="Vitaminas">Vitaminas</option>
						</select>
					</div>
					
						
					<div class="campo_right">
					   Edificaciones
				       <select name="Edificación" style="color:#035013">
							<option value="">---   SELECCIONE   ---</option>
							<option value="Vivienda Principal">Vivienda Principal</option>
							<option value="Vivienda Para Obrero">Vivienda Para Obrero</option>
							<option value="Galpón">Galpón</option>
							<option value="Area Administrativas">Area Administrativas</option>
							<option value="Depósito">Depósito</option>
							<option value="Cuarto de Aseo">Cuarto de Aseo</option>
						</select>
					</div>
					
					<div class="campo_left">
						Maquinaria y Equipo
						<select name="maquinaria_equipos" style="color:#035013">
							<option value="">---   SELECCIONE   ---</option>
							<option value="">Bebederos</option>
							<option value="">Comederos</option>
							<option value="">Bomba de Agua</option>
							<option value="">Equipo de Bombeo para Pozo Profundo</option>
							<option value="">Equipo de Bombeo Sumergible</option>
						</select>
					</div>
						
						
					<div class="campo_center">
						Instalaciones
						<select name="Instalaciones" style="color:#035013">
							<option value="">---   SELECCIONE   ---</option>
							<option value="Embarcadero">Embarcadero</option>
							<option value="Corrales de Cuarentena">Corrales de Cuarentena</option>
							<option value="Enfermería">Enfermería</option>
							<option value="Área de Monta">Área de Monta</option>
							<option value="Corrales de Gestación">Corrales de Gestación</option>
							<option value="Corrales de Maternidad">Corrales de Maternidad</option>
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
