<?php include("vistas/general/encabezado.html") ?>
<?php include("vistas/general/header.html") ?>
<div class="container">
	<div class="subcolumna subcolumna2 rounded_borders"> 
		<a href="pef/ayuda.pdf"><img class="info" title="Ayuda" src="../images/info.png"></a>
		<p class="title subtitulos rounded_borders">Sector Cun&iacute;cola</p>
		<form action="" class="centered" method="POST">
			<div class="campo_left">
				Rubro
				<select name="rubro" style="color:#035013">
					<option value="">---   SELECCIONE   ---</option>
					<option value="">Bovino</option>
					<option value="">Bufalino</option>
					<option value="">Caprino</option>
					<option value="">Ovino</option>
				</select>					
			</div>
			<div class="campo_center">
				Cantidad
				<input type="number" placeholder="" name="cant_cu" required>
			</div>
			<div class="campo_right">
				Clase Etaria
				<select name="clase_etaria" style="color:#035013">
					<option value="">---   SELECCIONE   ---</option>
					<option value="">Hembra Lactante</option>
					<option value="">Gestando y Lactando</option>
					<option value="">Hembras Vac&iacute;as</option>
					<option value="">Gazapos</option>
					<option value="">Reemplazo</option>
					<option value="">Engorde</option>
					<option value="">Machos Reproductores</option>
				</select>
			</div>
			<div class="campo_left">
				Cantidad (CE)
				<input type="number" placeholder="" name="cant_cu2" required>
			</div>
			<div class="campo_center">
				Tipo Destino
				<select name="tip_destino" style="color:#035013">
					<option value="">---   SELECCIONE   ---</option>
					<option value="">Puerta de Granja</option>
					<option value="">Restaurantes</option>
					<option value="">Carnicerias</option>
					<option value="">En Pie</option>
					<option value="">Beneficados</option>
				</select>
			</div>
			<div class="campo_right">
				Plan Sanitario
				<select name="plan_sanitario" style="color:#035013">
					<option value="">---   SELECCIONE   ---</option>
					<option value="">Micoplasma</option>
					<option value="">Vitaminas</option>
					<option value="">Aftosa</option>
					<option value="">Parvuvirosis</option>
					<option value="">Desparasitaci&acute;n</option>
				</select>
			</div>
			<button type="button" onclick="location.href='../index.php'">Cancelar</button>
			<button type="submit">Siguiente</button>
		</form>				
	</div>
</div>
<?php include('vistas/general/footer.html') ?>
<?php include('vistas/general/piepagina.html') ?>