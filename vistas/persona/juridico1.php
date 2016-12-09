<?php include("vistas/general/encabezado.html") ?>
<?php include("vistas/general/header.html") ?>
<div class="container">
	<div class="subcolumna subcolumna2 rounded_borders"> 
		<a href="pef/ayuda.pdf"><img class="info" title="Ayuda" src="web/imagenes/info.png"></a>
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
			<a id="instagram"><img src="web/imagenes/instagram.png" onmouseover="this.src='web/imagenes/ig_hover.png';" onmouseout="this.src='web/imagenes/instagram.png';" style="width:40%"></a>
			<a id="twitter"><img src="web/imagenes/twitter.png" onmouseover="this.src='web/imagenes/tw_hover.png';" onmouseout="this.src='web/imagenes/twitter.png';" style="width:40%"></a>
		</div>
		<div id="input_ig" style="display:none;">
			<a id="red1"><img id="red" onmouseover="this.src='web/imagenes/ig_hover.png';" onmouseout="this.src='web/imagenes/instagram.png';" src="web/imagenes/instagram.png"></a>
			Instagram
			<input name="instagram" placeholder="Red Social">
		</div>
		<div id="input_tw" style="display:none;">
			<a id="red2"><img id="red" onmouseover="this.src='web/imagenes/tw_hover.png';" onmouseout="this.src='web/imagenes/twitter.png';" src="web/imagenes/twitter.png"></a>
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
<!--script>
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
</script-->
<?php include("vistas/general/footer.html") ?>
<?php include("vistas/general/piepagina.html") ?>