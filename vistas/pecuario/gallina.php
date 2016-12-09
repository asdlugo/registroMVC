<?php include("vistas/general/encabezado.html") ?>
<?php include("vistas/general/header.html") ?>
<div class="container">
	<div class="subcolumna subcolumna2 rounded_borders"> 
		<a href="pef/ayuda.pdf"><img class="info" title="Ayuda" src="../images/info.png"></a>
		<p class="title subtitulos rounded_borders">Producción de Gallinas Traspatio</p>
		<form action="" class="centered" method="POST">
			<div class="campo_left">
				Tipo de Explotación
				<select name="rubro" style="color:#035013">
					<option value="">---   SELECCIONE   ---</option>
					<option value="Extensivo">Extensivo</option>
					<option value="Semiintensivo">Extensivo</option>
				</select>					
			</div>
			<div class="campo_center">
				Cantidad
				<input type="number" min="1" max="100000" step="1" value="1" placeholder="" name="cant_r" required>
			</div>
			<div class="campo_right">
				Plan Sanitario
				<input type="radio" name="plan_sanitario" value="Si" >Si
				<input type="radio" name="plan_sanitario" value="No" checked>No
			</div>
			<div class="campo_left">
				L&iacute;nea Gen&eacute;tica
				<select name="plan_sanitario" style="color:#035013">
					<option value="">---   SELECCIONE   ---</option>
				</select>
			</div>
			<button type="button" onclick="location.href='../index.php'">Cancelar</button>
			<button type="submit">Siguiente</button>
		</form>				
	</div>
</div>
<?php include('vistas/general/footer.html') ?>
<?php include('vistas/general/piepagina.html') ?>