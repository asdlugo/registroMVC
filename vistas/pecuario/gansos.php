<?php include("vistas/general/encabezado.html") ?>
<?php include("vistas/general/header.html") ?>
<div class="container">
	<div class="subcolumna subcolumna2 rounded_borders"> 
		<a href="pef/ayuda.pdf"><img class="info" title="Ayuda" src="../images/info.png"></a>
		<p class="title subtitulos rounded_borders">Producción de Gansos</p>
		<form action="" class="centered" method="POST">
			<div class="campo_left">
				Tipo de Explotación
				<select name="rubro" style="color:#035013">
					<option value="">---   SELECCIONE   ---</option>
					<option value="Grandes">Grandes</option>
					<option value="Medianos">Medianos</option>
					<option value="Pequeños">Pequeños</option>
				</select>					
			</div>
			<div class="campo_center">
				Razas
				<select name="Razas" style="color:#035013">
					<option value="">---   SELECCIONE   ---</option>
					<option value="African">African</option>
					<option value="Embden">Embden</option>
					<option value="Toulouse">Toulouse</option>
					<option value="Chino Blanco">Chino Blanco</option>	
				</select>
			</div>
			<div class="campo_right">
				Clase Etaria
				<select name="clase_etaria" style="color:#035013">
					<option value="">---   SELECCIONE   ---</option>
					<option value="Cr&iacutea">Cr&iacutea</option>
					<option value="Engorde">Engorde</option>
					<option value="Postura">Postura</option>
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
					<option value="En pie">En pie</option>
					<option value="Canal Evicerado">Canal Evicerado</option>
					<option value="Canal enviscerado refrigerado o congelado">Canal enviscerado refrigerado o congelado</option>
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
					<option value="A Puerta de Granja"></option>
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
					<option value="Área de manejo de huevo">Área de manejo de huevo</option>
					<option value="Área de Matanza">Área de Matanza</option>
					<option value="Zona de Reproductores">Zona de Reproductores</option>
					<option value="Zona de Engorde">Zona de Engorde</option>
					<option value="Silo">Silo</option>
					<option value="Tanque de Agua">Tanque de Agua</option>
					<option value="Depósito">Depósito</option>
				</select>
			</div>
			<button type="button" onclick="location.href='../index.php'">Cancelar</button>
    		<button type="submit">Siguiente</button>
		</form>				
	</div>
</div>
<?php include('vistas/general/footer.html') ?>
<?php include('vistas/general/piepagina.html') ?>