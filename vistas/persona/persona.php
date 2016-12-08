
<?php include("vistas/general/encabezado.html") ?>
<?php include("vistas/general/header.html") ?>
<div class="container">
	
	<div class="subcolumna subcolumna2 rounded_borders"> 
		<a href="pef/ayuda.pdf"><img class="info" title="Ayuda" src="web/imagenes/info.png"></a>
		<p class="title subtitulos rounded_borders">Persona Natural</p>
			<form action="<?php $_SERVER['PHP_SELF'] ?>" class="centered" method="POST">
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
				<div class="campo_center" style="">
					<div>Nombres</div>
					<input type="text" placeholder="Primer" name="nombre" style="width:48%; font-size:80%;" required>
					<input type="text" placeholder="Segundo" name="nombredos" style="width:48%; font-size:80%;" >
				</div>
				<div class="campo_right">
					<div>Apellidos</div>
					<input type="text" placeholder="Primer" name="apellido" style="width:48%; font-size:80%;" required>
					<input type="text" placeholder="Segundo" name="apellidodos" style="width:48%; font-size:80%;">
				</div>
				<div class="campo_left">
					Correo
					<input type="email" placeholder="Correo" name="correo" required>
				</div>
				<div class="campo_center">
					Teléfono Local
					<input type="text" placeholder="Local" name="local" required>
				</div>
				<div class="campo_right">
					Teléfono Celular
					<input type="text" placeholder="Celular" name="celular" required>
				</div>
				<div class="campo_left">
					Estado Civil
					<select name="edocivil" placeholder="edocivil" style="color:#035013">
						<option value="0">---   SELECCIONE   ---</option>
						<option value="1">Soltero</option>
						<option value="2">Casado</option>
						<option value="3">Viudo</option>
						<option value="4">Divorciado</option>
					</select>
				</div>
				<div class="campo_center">
					Fecha de Nacimiento
					<input type="date" placeholder="Fecha" name="fecha" required>
				</div>
				<div class="campo_right">
					Género
					<select name="genero" placeholder="genero" style="color:#035013">
						<option value="0">---   SELECCIONE   ---</option>
						<option value="1">Femenino</option>
						<option value="2">Masculino</option>
					</select>
				</div>
				<div class="campo_left">
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

				<button type="button" onclick="location.href='../index.php'">Cancelar</button>
	    			<button type="submit">Siguiente</button>	
			</form>				
	</div>
</div>
<?php include("vistas/general/footer.html") ?>
<?php include("vistas/general/piepagina.html") ?>