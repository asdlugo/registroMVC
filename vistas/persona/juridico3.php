<?php include("vistas/general/encabezado.html") ?>
<?php include("vistas/general/header.html") ?>
<div class="container">
	<div class="subcolumna subcolumna2 rounded_borders"> 
		<a href="pef/ayuda.pdf"><img class="info" title="Ayuda" src="../images/info.png"></a>
		<p class="title subtitulos rounded_borders">Integrantes Entidad Juridica</p> 
		<form action="solicitud_registro.php?id=juridico" class="centered" method="POST">
			<div class="campo_left">
				C&eacute;dula
				<div style="position:absolute;">
					<select id="cedula" name="tipo_documento">
						<option value="Venezolano">V</option>
						<option value="Extranjero">E</option>
					</select>
				</div>
				<input type="text" placeholder="C&eacute;dula" name="cedula" required>
			</div>
			<div class="campo_center" style="">
				<div>Nombres</div>
				<input type="text" placeholder="Primer" name="1ernombre" style="width:48%; font-size:80%;" required>
				<input type="text" placeholder="Segundo" name="2donombre" style="width:48%; font-size:80%;" >
			</div>
			<div class="campo_right">
				<div>Apellidos</div>
				<input type="text" placeholder="Primer" name="1erapellido" style="width:48%; font-size:80%;" required>
				<input type="text" placeholder="Segundo" name="2doapellido" style="width:48%; font-size:80%;">
			</div>
			<div class="campo_left">
				Correo
				<input type="email" placeholder="Correo" name="correo" required>
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
				Estado Civil
				<select name="edo_civil" placeholder="edo_civil" style="color:#035013">
					<option value="">---   SELECCIONE   ---</option>
					<option value="Soltero">Soltero</option>
					<option value="Casado">Casado</option>
					<option value="Viudo">Viudo</option>
					<option value="Divorciado">Divorciado</option>
				</select>
			</div>
			<div class="campo_center">
				Fecha de Nacimiento
				<input type="date" placeholder="Fecha" name="fecha_nac" required>
			</div>
			<div class="campo_right">
				Genero
				<select name="genero" placeholder="genero" style="color:#035013">
					<option value="">---   SELECCIONE   ---</option>
					<option value="Soltero">Femenino</option>
					<option value="Casado">Masculino</option>
				</select>
			</div>
			<div class="campo_left">
				Grado Instrucci&oacute;n
				<select name="grado_instruccion" style="color:#035013">
					<option value="">---   SELECCIONE   ---</option>
					<option value="Sin Grado de Instrucci&oacute;n">Sin Grado de Instrucci&oacute;n</option>
					<option value="Basica (Sin culminar)">Basica (Sin culminar)</option>
					<option value="Basica (Culminado)">Basica (Culminado)</option>
					<option value="Bachillerato (Sin Culminado)">Bachillerato (Sin Culminado)</option>
					<option value="Bachillerato (Culminado)">Bachillerato (Culminado)</option>
					<option value="TSU (Sin Culminado)">TSU (Sin Culminado)</option>
					<option value="TSU (Culminado)">TSU (Culminado)</option>
					<option value="Universitario (Sin Culminado)">Universitario (Sin Culminado)</option>
					<option value="Universitario (Culminado)">Universitario (Culminado)</option>
				</select>
			</div>
			<div class="campo_center">
				<div>¿Pertenece pueblo Indigena?</div>
				<div class="radio-inline" style="margin-left:-16%"> 
					<input type="radio" value="true" name="pueblo_ind" onchange="mostrar(this.value)">Si&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="radio" value="false" name="pueblo_ind" onchange="mostrar(this.value)" checked>No
				</div> 
			</div>  

			<div id="Etnia" style="display:none;"class="campo_right">
				Etnia
				<select name="etnia" style="color:#035013">
					<option value="">---   SELECCIONE   ---</option>
					<option value="Sin Grado de Instrucci&oacute;n">Sin Grado de Instrucci&oacute;n</option>
					<option value="Basica (Sin culminar)">Basica (Sin culminar)</option>
					<option value="Basica (Culminado)">Basica (Culminado)</option>
					<option value="Bachillerato (Sin Culminado)">Bachillerato (Sin Culminado)</option>
					<option value="Bachillerato (Culminado)">Bachillerato (Culminado)</option>
					<option value="TSU (Sin Culminado)">TSU (Sin Culminado)</option>
					<option value="TSU (Culminado)">TSU (Culminado)</option>
					<option value="Universitario (Sin Culminado)">Universitario (Sin Culminado)</option>
					<option value="Universitario (Culminado)">Universitario (Culminado)</option>
				</select>
			</div>
			
			<button type="submit"><span title="Agregar"  class="glyphicon glyphicon-plus"></span></button> 	<br><br><br>

			<table class="table table-hover table-bordered centered rounded_borders" >
				<thead bgcolor=#a3d88a>
					<tr style="color:green;">
						<th>#</th>
						<th>Nombres</th>
						<th>Apellidos</th>
						<th>C&eacute;dula</th>
						<th>Fecha Nacimiento</th>
						<th>Edo. Civil</th>
						<th>Genero</th>
						<th>Grado Instrucci&oacute;n</th>
						<th>Acciones</th>
					</tr>
				</thead>
				<tbody  bgcolor= white>
					<?php
					$c=1;
					while($c<=5)
					{
						?>				
						<tr>
							<td> <b><?php echo$c ?></b> </td>
							<td>  </td>
							<td>  </td>
							<td>  </td>
							<td>  </td>
							<td>  </td>
							<td>  </td>
							<td>  </td>
							<td> 
								<a href="#"><span style="padding:4px" title="Editar" class="glyphicon glyphicon-pencil"></span></a> 
								<a href="#"><span style="color:red" title="Eliminar" class="glyphicon glyphicon-remove"></span></a>
							</td>
						</tr>
						<?php	
						$c++;
					}
					?>
				</tbody>
			</table>

			<button type="button" onclick="location.href='juridico2.php'">Volver</button>
			<button type="button" onclick="solicitud_registro.php?id=juridico">Siguiente</button>	
		</form>		
	</div>
</div>
<?php include('vistas/general/footer.html') ?>
<?php include('vistas/general/piepagina.html') ?>