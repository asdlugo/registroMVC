<?php include("vistas/general/encabezado.html") ?>
<?php include("vistas/general/header.html") ?>
<div class="container">
    <div class="subcolumna subcolumna2 rounded_borders"> 
		<a href="pef/ayuda.pdf"><img class="info" title="Ayuda" src="../images/info.png"></a>
		<p class="title subtitulos rounded_borders">Informacón de la Unidad de Producci&oacute;n</p>
		<form action="sectores.php" class="centered" method="POST">
			<div class="campo_left">
				Capacidad de Exportacion
			<select name="grado_instruccion" style="color:#035013">
		      <option value="">---SELECCIONE---</option>
		      <option value="">SI</option>
		      <option value="">NO</option>
	      </select>
			</div>
		    <div class="campo_center">
				Necesidad de Importación 
			<select name="grado_instruccion" style="color:#035013">
		      <option value="">---SELECCIONE---</option>
		      <option value="">SI</option>
		      <option value="">NO</option>
	         </select>
			</div>
			<div class="campo_right">
				¿Se Encuentra Adscrita algún Organismo?
			<select name="grado_instruccion" style="color:#035013">
		      <option value="">---SELECCIONE---</option>
		      <option value="">SI</option>
		      <option value="">NO</option>
	       </select>
			</div>
			<div class="campo_left">
			     Tipo de Organismo
		 <select name="grado_instruccion" style="color:#035013">
		      <option value="">---SELECCIONE---</option>
		      <option value="">PUBLICA</option>
		      <option value="">PRIVADA</option>
		</select>
			</div>
			<div class="campo_center">
				RIF del Organismo
				<input type="text" placeholder="Nombre" name="nombre" required>	
			</div>
			<div class="campo_right">
				Nombre del Organismo
			<input type="text" placeholder="Nombre" name="nombre" required>
			</div>
			
			<button type="button" onclick="location.href='../index.php'">Cancelar</button>
    			<button type="submit">Siguiente</button>
		</form>				
	</div>
</div>
<?php include('vistas/general/footer.html') ?>
<?php include('vistas/general/piepagina.html') ?>