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
	<div class="subcolumna subcolumna2 rounded_borders"> 
		<p class="title">Persona Jur&iacute;dica</p>
		<p class="subtitle">Integrante Jur&iacute;dico</p>
		<div>
			<form action="solicitud_registro.php?id=juridico" class="centered" method="POST">
				<input type="int" placeholder="C&eacute;dula" name="ced_int" required>
				<input type="text" placeholder="Funci&oacute;n" name="funcion" required>
				<br>
				<button type="button" onclick="location.href='juridico1.php'">Volver</button>
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
