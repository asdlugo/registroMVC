<?php include("vistas/general/encabezado.html") ?>
<?php include("vistas/general/header.html") ?>

<div class="container">
		
	<div class="subcolumna subcolumna2 rounded_borders"> 
		<a href="pef/ayuda.pdf"><img class="info" title="Ayuda" src="../images/info.png"></a>
		<p class="title subtitulos rounded_borders">Persona Natural</p>
			<form action="http://localhost/registroMVC/index.php?view=Registronatural" class="centered" method="POST">
				<div class="campo_left">
					C&eacute;dula
					<div style="position:absolute;">
					<select id="cedula" name="tipo_documento">
						<option value="1">V</option>
						<option value="2">E</option>
					</select>
					</div>
					<input type="text" placeholder="C&eacute;dula" name="cedula" required>
				</div>
				<div class="campo_center">
					Nombre
					<input type="text" placeholder="Nombre" name="nombre" required>
				</div>
				<div class="campo_right">
					Apellido
					<input type="text" placeholder="Apellido" name="apellido" required>
				</div>
				<div class="campo_left">
					Correo
					<input type="email" placeholder="Correo" name="correo" required>
				</div>
				<div class="campo_center">
					Tel&eacute;fono
					<input type="int" placeholder="Tel&eacute;fono" name="telefono" required>
				</div>
				<div class="campo_right">
					Estado Civil
					<select name="edo_civil" placeholder="edo_civil" style="color:#035013">
						<option value="0">---   SELECCIONE   ---</option>
						<option value="1">Soltero</option>
						<option value="2">Casado</option>
						<option value="3">Viudo</option>
						<option value="4">Divorciado</option>
					</select>
				</div>
				<div class="campo_left">
					Fecha de Nacimiento
					<input type="date" placeholder="Fecha" name="fecha_nac" required>
				</div>
				<div class="campo_center">
					Genero
					<select name="genero" placeholder="genero" style="color:#035013">
						<option value="0">---   SELECCIONE   ---</option>
						<option value="1">Femenino</option>
						<option value="2">Masculino</option>
					</select>
				</div>
				<div class="campo_right">
					Grado Instrucci&oacute;n
					<select name="grado_instruccion" style="color:#035013">
						<option value="0">---   SELECCIONE   ---</option>
						<option value="1">Sin Grado de Instrucci&oacute;n</option>
						<option value="2">Basica (Sin culminar)</option>
						<option value="3">Basica (Culminado)</option>
						<option value="4">Bachillerato (Sin Culminado)</option>
						<option value="5">Bachillerato (Culminado)</option>
						<option value="6">TSU (Sin Culminado)</option>
						<option value="7">TSU (Culminado)</option>
						<option value="8">Universitario (Sin Culminado)</option>
						<option value="9">Universitario (Culminado)</option>
					</select>
				</div>
				<div class="campo_left">
					¿Vive en unidad de Producci&oacute;n?
					<div class="radio">Si<input type="radio" value="true" name="vive_up" checked></div>
					<div class="radio">No<input type="radio" value="false" name="vive_up" ></div>
				</div>

				<button type="button" onclick="location.href='../index.php'">Cancelar</button>
	    			<button type="submit">Siguiente</button>	
			</form>				
	</div>
</div>

<?php include('vistas/general/footer.html') ?>
<?php include('vistas/general/piepagina.html') ?>