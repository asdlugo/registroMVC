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
			<a href="pef/ayuda.pdf"><img class="info" title="Ayuda" src="../images/info.png"></a>
			<p class="title subtitulos rounded_borders">Domicilio Fiscal Jur&iacute;dico</p>
		<p class="subtitle"></p>
			<form action="juridico3.php" class="centered" method="POST">
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
		<p class="title subtitulos rounded_borders">Datos de la Organizacion</p>
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
		     Registro de Información Fiscal (RIF)
			<input type="text" placeholder="RIF" name="rif" required>
		</div>
		<div class="campo_left">
			Tipo de Organizaci&oacute;n	
		       	<input type="text" placeholder="Tipo de Organizaci&oacute;n" name="tip_organizacion" required>	
           	</div>

			
				<button type="button" onclick="location.href='juridico1.php'">Volver</button>
            			<button type="submit">Siguiente</button>	
		</form>		
	</div>
	</div>
	<footer>
		<?php include 'general/footer_interno.html'?>
	</footer>

</body>
</html>
