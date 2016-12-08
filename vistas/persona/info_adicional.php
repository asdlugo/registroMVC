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
		<p class="title subtitulos rounded_borders">Informaci&oacuten Adicional</p>
		<form action="" class="centered" method="POST">
		<div class="campo_left">
			¿Participa en alguna organizacion popular?
			<div class="radio-inline" style="margin-left:-16%"> 
				<input type="radio" value="true" name="organizacion" checked>Si&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<input type="radio" value="false" name="organizacion" >No
			</div> 
	        </div>  
		<div class="campo_center">
			Nombre Organizac&oacute;n
			<input type="text" placeholder="Nombre Organizaci&oacute;n" name="nombre_org" required>	
             	</div>
                <div class="campo_right">
			RIF
			<input type="text" placeholder="RIF" name="rif" required>
		</div>
		<div class="campo_left">
			Tipo de Organizaci&oacute;n	
		       	<input type="text" placeholder="Tipo de Organizaci&oacute;n" name="tip_organizacion" required>	
           	</div>
		<p class="title subtitulos2 rounded_borders">Datos Productor</p>
                  <div class="campo_left">
			Entidad	
		       	<input type="text" placeholder="Entidad" name="Entidad" required>	
           	   </div>
                 <div class="campo_center">
			Municipio
			<input type="text" placeholder="Municipio" name="Municipio" required>	
             	    </div>	
                    <div class="campo_right">
                        Parroquia
                       <input type="text" placeholder="Parr&oacute;quia" name="parroquia" required> 
                    </div>
                 <div class="campo_left">
			Centro Poblado	
		       	<input type="text" placeholder="Centro Poblado" name="Centro Poblado" required>	
           	   </div>
                 <div class="campo_center">
                       Direcci&oacuten 
	             	<textarea  name="datos_asoc" style="color:#035013"></textarea>
		  </div>
		<div class="campo_right">
			¿Vive en la UPA?
			<select name="grado_instruccion" style="color:#035013">
				<option value="">---SELECCIONE---</option>
				<option value="">SI</option>
				<option value="">NO</option>
			</select>
		</div>
		<div class="campo_left">
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

		<p class="title subtitulos rounded_borders">Datos Persona Referencial</p>
        
	        <div class="campo_left">
			Nombre y Apellido
                        <input type="text" placeholder="Nombre y Apellido" name="nombre" required>
                </div>
                <div class="campo_center">
			Telefono Local
                        <input type="text" placeholder="Local" name="local" required>
                </div>
                <div class="campo_right">
			Telefono Celular
                        <input type="text" placeholder="Celular" name="celular" required>
                </div>
		<div class="campo_left">
			Correo
			<input type="email" placeholder="Correo" name="Correo" required>
		</div>
		<div class="campo_center">
			Parentesco
			<select name="grado_instruccion" style="color:#035013">
				<option value="">---SELECCIONE---</option>
				<option value="">Papa</option>
				<option value="">Mama</option>
				<option value="">Hijo/a</option>
				<option value="">Hermano/a</option>
				<option value="">Esposo/a</option>
				<option value="">Primo/a</option>
			</select>
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

