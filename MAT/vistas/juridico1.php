<?php session_start(); ?>
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
			<div class="subcolumna subcolumna2 rounded_borders col-xs-12 col-sm-12 col-md-6 col-lg-6">
				<div class="row">
					<h4><p class="subtitulos img-rounded" align="center">Empresa</p></h4>
					<form action="juridico2.php" class="centered" method="POST">
						<div class="hidden-xs hidden-sm hidden-md col-lg-3" align="right">
							<h4><p class="titulos">Registro de Información Fiscal (RIF)</p></h4>
						</div>
						<div class="col-xs-12 col-sm-12 col-md-6 col-lg-3" align="left">
							<input type="int" placeholder="RIF" name="rif" required>
							<br><br>
						</div>
						<div class="hidden-xs hidden-sm hidden-md col-lg-3" align="right">
							<h4><p class="titulos">Razon&nbsp;Social</p></h4>
						</div>
						<div class="col-xs-12 col-sm-12 col-md-6 col-lg-3" align="left">
							<input type="text" placeholder="Razon Social" name="razon_soc" required>
							<br><br>
						</div>
						<div class="hidden-xs hidden-sm hidden-md col-lg-3" align="right">
							<h4><p class="titulos">Tel&eacute;fono</p></h4>
						</div>
						<div class="col-xs-12 col-sm-12 col-md-6 col-lg-3" align="left">
							<input type="int" placeholder="Tel&eacute;fono" name="telefono" required>
							<br><br>
						</div>
						<div class="hidden-xs hidden-sm hidden-md col-lg-3" align="right">
							<h4><p class="titulos">Correo</p></h4>
						</div>
						<div class="col-xs-12 col-sm-12 col-md-6 col-lg-3" align="left">
							<input type="email" placeholder="Correo" name="correo" required>
							<br><br>
						</div>
				</div>
					<fieldset class="fsStyle">
						<legend class="legendStyle"> Integrantes</legend>
							<div class="row collapse in" id="demo"></div>
					</fieldset>
				<div class="row">	
						<div class="hidden-xs hidden-sm hidden-md col-lg-3" align="right">
							<h4><p class="titulos">C&eacute;dula&nbsp;de&nbsp;Identidad</p></h4>
						</div>
						<div class="col-xs-12 col-sm-12 col-md-6 col-lg-3">
							<input type="int" placeholder="C&eacute;dula" name="cedula" required>
							<br><br>
						</div>
						<div class="hidden-xs hidden-sm hidden-md col-lg-3" align="right">
							<h4><p class="titulos">Cargo</p></h4>
						</div>
						<div class="col-xs-12 col-sm-12 col-md-6 col-lg-3" align="left">
							<select name="edo_civil" placeholder="edo_civil" style="padding: 15px 45px;">
								<option value="">---   SELECCIONE   ---</option>
								<option value="Representante">Representante Legal</option>
								<option value="Integrante">Integrante</option>
							</select>
							<br><br>
						</div>
						<div class="hidden-xs hidden-sm hidden-md col-lg-3" align="right">
							<h4><p class="titulos">Primer&nbsp;Nombre</p></h4>
						</div>
						<div class="col-xs-12 col-sm-12 col-md-6 col-lg-3">
							<input type="text" placeholder="Primer Nombre" name="primernombre" required>
							<br><br>
						</div>
						<div class="hidden-xs hidden-sm hidden-md col-lg-3"align="right">
							<h4><p class="titulos">Segundo&nbsp;Nombre</p></h4>
						</div>
						<div class="col-xs-12 col-sm-12 col-md-6 col-lg-3">
							<input type="text" placeholder="Segundo Nombre" name="segundonombre" required>
							<br><br>
						</div>
						<div class="hidden-xs hidden-sm hidden-md col-lg-3"align="right">
							<h4><p class="titulos">Primer&nbsp;Apellido</p></h4>
						</div>
						<div class="col-xs-12 col-sm-12 col-md-6 col-lg-3">
							<input type="text" placeholder="Primer Apellido" name="primerapellido" required>
							<br><br>
						</div>
						<div class="hidden-xs hidden-sm hidden-md col-lg-3" align="right">
							<h4><p class="titulos">Segundo&nbsp;Apellido</p></h4>
						</div>					
						<div class="col-xs-12 col-sm-12 col-md-6 col-lg-3">
							<input type="text" placeholder="Segundo Apellido" name="segundoapellido" required>
							<br><br>
						</div>								
						<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
							<button type="button" onclick="location.href='../index.php'">Cancelar</button>
			            	<button type="submit">Siguiente</button>
		    			</div>
					</form>		
				</div>
			</div>		
		</div>
	<footer>
		<?php include 'general/footer_interno.html'?>
	</footer>
</body>
</html>
