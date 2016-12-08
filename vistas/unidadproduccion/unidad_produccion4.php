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
		<p class="title subtitulos rounded_borders">Disponibilidad de Medios Propios para el Traslado de la Producción </p>
		<form action="" class="centered" method="POST">
		<div class="campo_left">
			<br>¿Posee Transporte Propio para el Traslado de la Producción?</br>
			
			<div class="radio-inline" style="margin-left:-16%"> 
				<input type="radio" value="true" name="traslado" checked>Si&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<input type="radio" value="false" name="traslado" >No
			</div> 
	        </div>  
		<div class="campo_center">
			Tipo de Transporte
			<input type="text" placeholder="Tipo de Transporte" name="nombre_org" required>	
             	</div>
             <div class="campo_right">
			Cantidad
		<input type="number" placeholder="Cantidad" name="cantidad" required>
		</div>
		
		<div class="campo_left">
			Capacidad en Tonelada
		<input type="number" placeholder="Capacidad" name="capacidad" required>
		</div>
		<p class="title subtitulos2 rounded_borders">Problemática o Inconvenientes que Presenta la UP </p>
                  <div class="campo_left">
			Tipo de Problema
		       	<textarea  name="datos_asoc" style="color:#035013"></textarea>	
           	   </div>
                 <div class="campo_center">
			Descripción
				<textarea  name="datos_asoc" style="color:#035013"></textarea>	
             	 </div>	
                   
		
           		<button type="button" onclick="location.href='../index.html'">Cancelar</button>
			<button type="submit" value="Guardar">Guardar</button>
		</form>	
	</div>	
	</div>

	<footer>
		<?php include 'general/footer_interno.html'?>
	</footer>	
</body>
</html> 

