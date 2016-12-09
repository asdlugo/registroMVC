<?php include("vistas/general/encabezado.html") ?>
<?php include("vistas/general/header.html") ?>
<div class="container">
	<div class="subcolumna subcolumna2 rounded_borders"> 
		<a href="pef/ayuda.pdf"><img class="info" title="Ayuda" src="../images/info.png"></a>
		<p class="title subtitulos rounded_borders">Unidad de Producci&oacute;n</p>
		<form action="sectores.php" class="centered" method="POST">
			<div class="campo_left">
				Superficie Total
				<input type="number" id="number" min="0.00" max="100000" step="0.01" value="0.00"placeholder="" name="super_t" required>
			</div>
			<div class="campo_center">
				Superficie Aprovechada
				<input type="number" id="number" min="0.00" max="100000" step="0.01" value="0.00" placeholder="" name="super_a" required>
			</div>
			<div class="campo_right">
				Superficie Aprovechable
				<input type="number" id="number" min="0.00" max="100000" step="0.01" value="0.00" placeholder=""  name="super_aproblechable" required>
			</div>
			<p class="title subtitulos2 rounded_borders">Servicios Básico UPA</p>
			<div class="campo_left">
				 <label class="checkbox-inline"><input type="checkbox" value="">Agua</label>
				 <label class="checkbox-inline"><input type="checkbox" value="">Telefono</label>
                 <label class="checkbox-inline"><input type="checkbox" value="">Luz</label></div>
                 
			<div class="campo_left">
				Principal Fuente de Agua 
				<select name="via_agri" style="color: #035013;">
					<option value="">---   SELECCIONE   ---</option>
					<option value="Acueducto">Acueducto</option>
					<option value="Laguna">laguna </option>
					<option value="Sistema de Riego">Sistema de Riego</option>
					<option value="Pozo Comunitario">Pozo Comunitario</option>
				</select>
			</div>
			<div class="campo_center">
				Vialidad Agricola
				<select name="instalaciones" style="color: #035013;">
					<option value="">---   SELECCIONE   ---</option>
					<option value="Asfaltado">Asfaltado</option>
					<option value="Grazon">Grazon</option>
					<option value="Tierra">Tierra</option>
					<option value="Concreto">Concreto</option>
				</select>
			</div>
			<div class="campo_right">Destino de Producción
				<select name="problematica" style="color: #035013;">
					<option value="">---   SELECCIONE   ---</option>
					<option value="Autoconsumo">Autoconsumo</option>
					<option value="Mercado">Mercado</option>
					<option value="Intermediario">Intermediario</option>
					<option value="A Puerta de Granja">A Puerta de Granja</option>
				</select>
			</div>
			<button type="button" onclick="location.href='../index.php'">Cancelar</button>
    			<button type="submit">Siguiente</button>
		</form>				
	</div>
</div>
<?php include('vistas/general/footer.html') ?>
<?php include('vistas/general/piepagina.html') ?>