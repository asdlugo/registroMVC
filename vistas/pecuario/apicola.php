<?php include("vistas/general/encabezado.html") ?>
<?php include("vistas/general/header.html") ?>
<div class="container">
	<div class="subcolumna subcolumna2 rounded_borders"> 
		<a href="pef/ayuda.pdf"><img class="info" title="Ayuda" src="../images/info.png"></a>
		<p class="title subtitulos rounded_borders">Sector Apicola</p>
		<form action="" class="centered" method="POST">
			<div class="campo_left">
				Producci&oacute;n
				<select name="ciclo" style="color:#035013">
					<option value="0">---   SELECCIONE   ---</option>
					<option value="1">Miel</option>
					<option value="2">Cera</option>
					<option value="3">Polen</option>
					<option value="4">Jalea Real</option>
					<option value="5">Prop&oacute;leo</option>
					<option value="6">Apitoxina</option>
				</select>
			</div>
			<div class="campo_center">
				Kg
				<input type="number" min="1" max="100000" style="color:#035013" step="1" value="1" name="kg" required>
			</div>
			<div class="campo_right">
				 Raza
				<select name="tipo_colmena" style="color:#035013">
					<option value="0">---   SELECCIONE   ---</option>
					<option value="1">Apis mellifera ligustica(Italiana)</option>
					<option value="2">Apis mellifera ibérica(Española)</option>
					<option value="3">Apis mellifera scutellata(Africana)</option>
					
				</select>
			</div>
			<div class="campo_left">
      			Colmena
				<select name="tipo_colmena" style="color:#035013">
					<option value="0">---   SELECCIONE   ---</option>
					<option value="1">Langtroth</option>
					<option value="2">Dadant</option>
					<option value="3">Layens</option>
					<option value="4">Rustica</option>
				</select>
			</div>
			<div class="campo_center">
				Meses de Cosecha
				<select name="estatus_siembra" style="color: #035013;">
					<option value="">---   SELECCIONE   ---</option>
					<option value="enero">Enero</option>
					<option value="febrero">Febrero</option>
					<option value="marzo">Marzo</option>
					<option value="abril">Abril</option>
					<option value="mayo">Mayo</option>
					<option value="junio">Junio</option>
					<option value="julio">Julio</option>
					<option value="agosto">Agosto</option>
					<option value="septiembre">Septiembre</option>
					<option value="octubre">Octubre</option>
					<option value="noviembre">Noviembre</option>
					<option value="diciembre">Diciembre</option>
				</select>
			</div>
			<div class="campo_right">
				Tipo de Explotación
				<select name="rubro" style="color:#035013">
					<option value="">---   SELECCIONE   ---</option>
					<option value="Grandes">Grandes</option>
					<option value="Medianos">Medianos</option>
					<option value="Pequeños">Pequeños</option>
				</select>
			</div>
			<div class="campo_left">
				Meses de Cosecha
				<select name="estatus_siembra" style="color: #035013;">
					<option value="">---   SELECCIONE   ---</option>
					<option value="enero">Enero</option>
					<option value="febrero">Febrero</option>
					<option value="marzo">Marzo</option>
					<option value="abril">Abril</option>
					<option value="mayo">Mayo</option>
					<option value="junio">Junio</option>
					<option value="julio">Julio</option>
					<option value="agosto">Agosto</option>
					<option value="septiembre">Septiembre</option>
					<option value="octubre">Octubre</option>
					<option value="noviembre">Noviembre</option>
					<option value="diciembre">Diciembre</option>
				</select>
			</div>
			<div class="campo_center">
				Colmena Producci&oacute;n (CT)
				<input type="number" min="1" max="100000" step="1" value="1" placeholder="" name="cp" style="color:#035013" required>
			</div>
			<div class="campo_right">
				Cantidad Reinas
				<input type="number" placeholder="Cantidad Reinas"  name="can_reinas" required>
			</div>
			<div class="campo_left">
				Plan Sanitario
				<select name="plan_sanitario" style="color:#035013">
					<option value="">---   SELECCIONE   ---</option>
					<option value="">Varroa (control)</option>
					<option value="">Polilla (Control)</option>
				</select>
			</div>
			<div class="campo_center">
				Equipamineto
				<select name="equipamiento" style="color: #035013;">
					<option value="">---   SELECCIONE   ---</option>
					<option value="Ahumador">Ahumador</option>
					<option value="Alimentador">Alimentador</option>
					<option value="Alza cuadro">Alza cuadro</option>
					<option value="Botas de gomas">Botas de gomas</option>
				</select>					
			</div>
		<button type="button" onclick="location.href='../index.php'">Cancelar</button>
		<button type="submit">Siguiente</button>
		</form>				
	</div>
</div>

<?php include('vistas/general/footer.html') ?>
<?php include('vistas/general/piepagina.html') ?>