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
		<?php 
			include 'general/header_interno.html';
			$sector=$_GET['sector'];
		?>
	</header>
	
	<div class="container">
		
		<div class="subcolumna subcolumna2 rounded_borders"> 
			<a href="pef/ayuda.pdf"><img class="info" title="Ayuda" src="../images/info.png"></a>
			<p class="title subtitulos rounded_borders">Sub-Sector <?php echo$sector; ?></p>
				<form action="" class="centered" method="POST">
					
					<div class="campo_left">
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
					<div class="campo_center">
						Cantidad
						<input type="number" min="1" max="100000" step="1" value="1" placeholder="" name="cant_r" required>
					</div>
					<div class="campo_right">
						Modo Orde&ntilde;o
						<select name="modo_ordeno" style="color:#035013">
							<option value="">---   SELECCIONE   ---</option>
							<option value="Cr&iacute;a">Cr&iacute;a</option>
							<option value="Sin Cr&iacute;a">Sin Cr&iacute;a</option>
						</select>
					</div>
					<div class="campo_left">
						Tipo Orde&ntilde;o
						<select name="tip_ordeno" style="color:#035013">
							<option value="">---   SELECCIONE   ---</option>
							<option value="Manual">Manual</option>
							<option value="Mecanico">Mecanico</option>
						</select>
					</div>
					<div class="campo_center">
						Modalidad de Producci&oacute;n
						<select name="modalidad_produccion" style="color:#035013">
							<option value="">---   SELECCIONE   ---</option>
							<option value="Cr&iacute;a / Vaca / BEcerro">Cr&iacute;a / Vaca / Becerro</option>
							<option value="Cr&iacute;a / Vaca / Maute">Cr&iacute;a / Vaca / Maute</option>
							<option value="Cr&iacute;a / Vaca / Novillo">Cr&iacute;a / Vaca / Novillo</option>
							<option value="Cr&iacute;Levante">Levante</option>
							<option value="Ceba">Ceba</option>
						</select>
					</div>
					<div class="campo_right">
						Comercializaci&oacute;n
						<select name="comercializacion" style="color:#035013">
							<option value="">---   SELECCIONE   ---</option>
							<option value="Manual">Matadero</option>
							<option value="Mecanico">Reproductores</option>
						</select>
					</div>
					<div class="campo_left">
						Cantidad
						<input type="number" min="1" max="100000" step="1" value="1" placeholder="" name="cant_c" required>
					</div>
					<div class="campo_center">
						Tipo Explotaci&oacute;n
						<select name="tip_explotacion" style="color:#035013">
							<option value="">---   SELECCIONE   ---</option>
							<option value="">Leche Especializada</option>
							<option value="">Carne Especializada</option>
							<option value="">Leche-Carne</option>
							<option value="">Carne-Leche</option>
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
