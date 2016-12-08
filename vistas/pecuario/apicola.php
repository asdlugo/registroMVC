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
			<p class="title subtitulos rounded_borders">Sector Apicola</p>
				<form action="" class="centered" method="POST">
					<div class="campo_left">
						Producci&oacute;n
						<select name="ciclo" style="color:#035013">
							<option value="">---   SELECCIONE   ---</option>
							<option value="">Miel</option>
							<option value="">Cera</option>
							<option value="">Polen</option>
							<option value="">Jalea Real</option>
							<option value="">Prop&oacute;leo</option>
							<option value="">Apitoxina</option>
						</select>
					</div>
					<div class="campo_center">
						Kg
						<input type="number" min="1" max="100000" style="color:#035013" step="1" value="1" name="kg" required>
					</div>
					<div class="campo_right">
						 Raza
						<select name="tipo_colmena" style="color:#035013">
							<option value="">---   SELECCIONE   ---</option>
							<option value="">Apis mellifera ligustica(Italiana)</option>
							<option value="">Apis mellifera ibérica(Española)</option>
							<option value="">Apis mellifera scutellata(Africana)</option>
							
						</select>
					</div>
					<div class="campo_left">
                          Colmena
						<select name="tipo_colmena" style="color:#035013">
							<option value="">---   SELECCIONE   ---</option>
							<option value="">Langtroth</option>
							<option value="">Dadant</option>
							<option value="">Layens</option>
							<option value="">Rustica</option>
						</select>
					</div>
					<div class="campo_center">
						Meses de Cosecha
						<select name="estatus_siembra" style="color: #035013;">
							<option value="">---   SELECCIONE   ---</option>
							<option value="enero">Enero</option>
							<option value="febrero">Febrero</option>
							<option value="marzo">Marzo</option>
							<option value="abril">Abril</option>
							<option value="mayo">Mayo</option>
							<option value="junio">Junio</option>
							<option value="julio">Julio</option>
							<option value="agosto">Agosto</option>
							<option value="septiembre">Septiembre</option>
							<option value="octubre">Octubre</option>
							<option value="noviembre">Noviembre</option>
							<option value="diciembre">Diciembre</option>
						</select>
					</div>
					<div class="campo_right">
						Tipo de Explotación
						<select name="rubro" style="color:#035013">
							<option value="">---   SELECCIONE   ---</option>
							<option value="Grandes">Grandes</option>
							<option value="Medianos">Medianos</option>
							<option value="Pequeños">Pequeños</option>
						</select>
					</div>
					<div class="campo_left">
						Meses de Cosecha
						<select name="estatus_siembra" style="color: #035013;">
							<option value="">---   SELECCIONE   ---</option>
							<option value="enero">Enero</option>
							<option value="febrero">Febrero</option>
							<option value="marzo">Marzo</option>
							<option value="abril">Abril</option>
							<option value="mayo">Mayo</option>
							<option value="junio">Junio</option>
							<option value="julio">Julio</option>
							<option value="agosto">Agosto</option>
							<option value="septiembre">Septiembre</option>
							<option value="octubre">Octubre</option>
							<option value="noviembre">Noviembre</option>
							<option value="diciembre">Diciembre</option>
						</select>
					</div>
					<div class="campo_center">
						Colmena Producci&oacute;n (CT)
						<input type="number" min="1" max="100000" step="1" value="1" placeholder="" name="cp" style="color:#035013" required>
					</div>
					<div class="campo_right">
						Cantidad Reinas
						<input type="number" placeholder="Cantidad Reinas"  name="can_reinas" required>
					</div>
					<div class="campo_left">
						Plan Sanitario
						<select name="plan_sanitario" style="color:#035013">
							<option value="">---   SELECCIONE   ---</option>
							<option value="">Varroa (control)</option>
							<option value="">Polilla (Control)</option>
						</select>
					</div>
					<div class="campo_center">
						Equipamineto
						<select name="equipamiento" style="color: #035013;">
							<option value="">---   SELECCIONE   ---</option>
							<option value="Ahumador">Ahumador</option>
							<option value="Alimentador">Alimentador</option>
							<option value="Alza cuadro">Alza cuadro</option>
							<option value="Botas de gomas">Botas de gomas</option>
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
