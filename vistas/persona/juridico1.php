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
	
	<script>
		$(document).ready(function(){
			$("#instagram").on( "click", function() {
				$('#input_ig').show(); //muestro mediante id
				$('#input_tw').hide(); //oculto mediante id
				$('#redes').hide(); //oculto mediante id
			 });
			$("#twitter").on( "click", function() {
				$('#input_ig').hide(); //muestro mediante id
				$('#input_tw').show(); //oculto mediante id
				$('#redes').hide(); //oculto mediante id
			 });
			$("#red1").on( "click", function() {
				$('#input_ig').hide(); //muestro mediante id
				$('#input_tw').hide(); //oculto mediante id
				$('#redes').show(); //oculto mediante id
			 });
			$("#red2").on( "click", function() {
				$('#input_ig').hide(); //muestro mediante id
				$('#input_tw').hide(); //oculto mediante id
				$('#redes').show(); //oculto mediante id
			 });
		});
	</script>
</head>
<body>

	<header>
		<?php include 'general/header_interno.html'?>
	</header>
	
	<div class="container">
		<div class="subcolumna subcolumna2 rounded_borders"> 
			<a href="pef/ayuda.pdf"><img class="info" title="Ayuda" src="../images/info.png"></a>
			<p class="title subtitulos rounded_borders">Persona Jur&iacute;dica</p>
			<form action="juridico2.php" class="centered" method="POST">
				<div class="campo_left">
					Registro de Información Fiscal RIF
					<input type="text" placeholder="RIF" name="rif" required>
				</div>
				<div class="campo_center">
					Razon Social
					<input type="text" placeholder="Razon Social" size=44 name="razon_soc" required>
				</div>
				<div class="campo_right">
					Correo
					<input type="email" placeholder="Correo" size=44 name="razon_soc" required>
				</div>
				<div class="campo_left">
					Tel&eacute;fono Movil
					<input type="text" placeholder="Tel&eacute;fono" name="telefono" required>
				</div>
				<div class="campo_center">
					Tel&eacute;fono Local
					<input type="text" placeholder="Tel&eacute;fono" name="telefono" required>
				</div>
				<div class="campo_right">
			<div id="redes">
				<div>
					Red Social
				</div>
				<a id="instagram"><img src="../images/instagram.png" onmouseover="this.src='../images/ig_hover.png';" onmouseout="this.src='../images/instagram.png';" style="width:40%"></a>
				<a id="twitter"><img src="../images/twitter.png" onmouseover="this.src='../images/tw_hover.png';" onmouseout="this.src='../images/twitter.png';"style="width:40%"></a>
			</div>
			<div id="input_ig" style="display:none;">
				<a id="red1"><img id="red" onmouseover="this.src='../images/ig_hover.png';" onmouseout="this.src='../images/instagram.png';" src="../images/instagram.png"></a>
				Instagram
				<input name="instagram" placeholder="Red Social">
			</div>
			<div id="input_tw" style="display:none;">
				<a id="red2"><img id="red" onmouseover="this.src='../images/tw_hover.png';" onmouseout="this.src='../images/twitter.png';" src="../images/twitter.png"></a>
				Twitter
				<input name="twitter" placeholder="Red Social">
			</div>
		</div>

				<button type="button" onclick="location.href='../index.php'">Cancelar</button>
            			<button type="submit">Siguiente</button>	
			</form>		
		</div>		
	</div>
	</div>

	<footer>
		<?php include 'general/footer_interno.html'?>
	</footer>
</body>
</html>
