<?php include("vistas/general/encabezado.html") ?>
<?php include("vistas/general/header.html") ?>
<div class="container">
	<div class="subcolumna subcolumna2 rounded_borders"> 
		<a href="pef/ayuda.pdf"><img class="info" title="Ayuda" src="../images/info.png"></a>
		<p class="title subtitulos rounded_borders">Producción de Avestruz</p>
		<form action="" class="centered" method="POST">
			<div class="campo_left">
				Tipo de Explotación
				<select name="rubro" style="color:#035013">
					<option value="">---   SELECCIONE   ---</option>
					<option value="Producci&oacuten de Huevos Fertiles">Producci&oacuten de Huevos Fertiles</option>
					<option value="Engorde de Cr&iacutea">Engorde de Cr&iacutea</option>
					<option value="Reproducci&oacuten de Reproductores">Reproducci&oacuten de Reproductores</option>
				</select>					
			</div>
			<div class="campo_center">
				Razas
				<select name="Razas" style="color:#035013">
					<option value="">---   SELECCIONE   ---</option>
					<option value="Camelus comesticus (Cuello Azul)">Camelus comesticus (Cuello Azul)</option>
				</select>
			</div>
			<div class="campo_right">
				Clase Etaria
				<select name="clase_etaria" style="color:#035013">
					<option value="">---   SELECCIONE   ---</option>
					<option value="BB">BB</option>
					<option value="Juvenil">JuveniL</option>
					<option value="Engorde">Engorde</option>
					<option value="Reproductor">Reproductor</option>
				</select>
			</div>
			<div class="campo_left">
				Edificaciones
				<select name="Edificaciones" style="color:#035013">
					<option value="">---   SELECCIONE   ---</option>
					<option value="Vivienda Principal">Vivienda Principal</option>
					<option value="Vivienda para Obreros">Vivienda para Obreros</option>
					<option value="Galp">Vivienda para Obreros</option>
				</select>
			</div>
			<div class="campo_center">
				Comercialización
			<select name="comercializacion" style="color:#035013">
					<option value="">---   SELECCIONE   ---</option>
					<option value="Huevo fertiles ">Huevo fertiles</option>
					<option value="Huevo para consumo">Huevo para consumo</option>
					<option value="Cr&iacutea">Cr&iacutea</option>
				</select>
			</div>
			<div class="campo_right">
				Plan Sanitario
				<select name="plan_sanitario" style="color:#035013">
					<option value="">---   SELECCIONE   ---</option>
					<option value="New Castle">New Castle</option>
					<option value="Gumboro">Gumboro</option>
					<option value="Mareck">Mareck</option>
				</select>
			</div>
			<div class="campo_left">
				Maquinaria y Equipo
				<select name="maquinaria_equipos" style="color:#035013">
					<option value="">---   SELECCIONE   ---</option>
					<option value="">Nidos</option>
					<option value="">Comedores</option>
					<option value="">Bebederos (Jaulas)</option>
					<option value="">Incubadora</option>
					<option value="">Criadora</option>
				</select>
			</div>
			<div class="campo_center">
				Distribuci&oacute;n
				<select name="tipo_explotacion" style="color:#035013">
					<option value="">---   SELECCIONE   ---</option>
					<option value="Industria">Industria</option>
					<option value="Restaurantes">Restaurantes</option>
					<option value="Carnicer&iacuteas">Carnicer&iacuteas</option>
					<option value="Otros">Otros</option>
				</select>
			</div>
			<div class="campo_right">
				Instalaciones
				<select name="instalaciones" style="color:#035013">
					<option value="">---   SELECCIONE   ---</option>
					<option value="Área Administrativa ">Área Administrativa</option>
					<option value="Enfermer&iacutea">Enfermer&iacutea</option>
					<option value="Depósito">Depósito</option>
					<option value="Corral de Curentena">Corral de Curentena</option>
					<option value="Corral de Avestruz BB">Corral de Avestruz BB</option>
					<option value="Corral de Avestruz Juvenil">Corral de Avestruz Juvenil</option>
					<option value="Corral de Engorde">Corral de Engorde</option>
					<option value="Corral de Avestruz">Corral de Avestruz</option>
					
				</select>
			</div>
			<button type="button" onclick="location.href='../index.php'">Cancelar</button>
    			<button type="submit">Siguiente</button>
		</form>				
	</div>
</div>
<?php include('vistas/general/footer.html') ?>
<?php include('vistas/general/piepagina.html') ?>