<!DOCTYPE html>
<?php session_start(); ?>
<html>
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
			<h4><p class="subtitulos img-rounded" align="center">Persona Natural</p></h4>
				<form action="solicitud_registro.php?id=natural" class="centered" method="POST">
				</br>
					<div class="hidden-xs hidden-sm hidden-md col-lg-3" align="right">
						<h4><p class="titulos">C&eacute;dula&nbsp;de&nbsp;Identidad</p></h4>
					</div>
					<div class="col-xs-12 col-sm-12 col-md-6 col-lg-3">
						<input type="int" placeholder="C&eacute;dula" name="cedula" required>
						<br><br>
					</div>
					<div class="hidden-xs hidden-sm hidden-md col-lg-3" align="right">
						<h4><p class="titulos">Fecha&nbsp;de&nbsp;Nacimiento</p></h4>
					</div>					
					<div class="col-xs-12 col-sm-12 col-md-6 col-lg-3">
						<input type="date" placeholder="Fecha" name="fecha_nac" style="width: 245px" required>
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
					<div class="hidden-xs hidden-sm hidden-md col-lg-3" align="right">
						<h4><p class="titulos">Estado&nbsp;civil</p></h4>
					</div>						
					<div class="col-xs-12 col-sm-12 col-md-6 col-lg-3">
					<select name="edo_civil" placeholder="edo_civil" style="padding: 15px 45px;">
						<option value="">---   SELECCIONE   ---</option>
						<option value="Soltero">Soltero</option>
						<option value="Casado">Casado</option>
						<option value="Viudo">Viudo</option>
						<option value="Divorciado">Divorciado</option>
					</select>
					<br><br>
					</div>
					<div class="hidden-xs hidden-sm hidden-md col-lg-3" align="right">
						<h4><p class="titulos">Tel&eacute;fono&nbsp;Local</p></h4>
					</div>	
					<div class="col-xs-12 col-sm-12 col-md-6 col-lg-3">
						<input type="int" placeholder="Tel&eacute;fono Local" name="telefono" required>
						<br><br>
					</div>
					<div class="hidden-xs hidden-sm hidden-md col-lg-3" align="right">
						<h4><p class="titulos">Tel&eacute;fono&nbsp;Movil</p></h4>
					</div>	
					<div class="col-xs-12 col-sm-12 col-md-6 col-lg-3">
						<input type="int" placeholder="Tel&eacute;fono Movil" name="telefono" required>
						<br><br>
					</div>
					<div class="hidden-xs hidden-sm hidden-md col-lg-3" align="right">
						<h4><p class="titulos">Correo&nbsp;Electronico</p></h4>
					</div>
					<div class="col-xs-12 col-sm-12 col-md-6 col-lg-3">
						<input type="email" placeholder="Correo" name="correo" required>
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
