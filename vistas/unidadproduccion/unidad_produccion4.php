<?php include("vistas/general/encabezado.html") ?>
<?php include("vistas/general/header.html") ?>
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
<?php include('vistas/general/footer.html') ?>
<?php include('vistas/general/piepagina.html') ?>