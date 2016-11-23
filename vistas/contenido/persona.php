<?php include("vistas/general/encabezado.html") ?>
<?php include("vistas/general/header.html") ?>
<div class="container">
	
	<div class="subcolumna subcolumna2 rounded_borders col-xs-12 col-sm-12 col-md-6 col-lg-6"> 
		<div class="row">
			<h4><p class="subtitulos img-rounded" align="center">Persona Natural</p></h4>
			<form action="http://localhost/registroMVC/index.php?view=persona" class="centered" method="POST">
				</br>

				<!-- campo cedula -->
				<div class="hidden-xs hidden-sm hidden-md col-lg-3" align="right">
					<h4><p class="titulos">C&eacute;dula&nbsp;de&nbsp;Identidad</p></h4>
				</div>
				<div class="col-xs-12 col-sm-12 col-md-6 col-lg-3">
					<input type="int" placeholder="C&eacute;dula" name="cedula" required>
					<br><br>
				</div>
				
				<!-- campo fecha de nacimiento -->
				<div class="hidden-xs hidden-sm hidden-md col-lg-3" align="right">
					<h4><p class="titulos">Fecha&nbsp;de&nbsp;Nacimiento</p></h4>
				</div>					
				<div class="col-xs-12 col-sm-12 col-md-6 col-lg-3">
					<input type="date" placeholder="Fecha" name="fecha_nac" style="width: 245px" required>
					<br><br>
				</div>
				
				<!-- campo primer nombre-->
				<div class="hidden-xs hidden-sm hidden-md col-lg-3" align="right">
					<h4><p class="titulos">Primer&nbsp;Nombre</p></h4>
				</div>
				<div class="col-xs-12 col-sm-12 col-md-6 col-lg-3">
					<input type="text" placeholder="Primer Nombre" name="primernombre" required>
					<br><br>
				</div>
				
				<!-- campo segundo nombre -->
				<div class="hidden-xs hidden-sm hidden-md col-lg-3" align="right">
					<h4><p class="titulos">Segundo&nbsp;Nombre</p></h4>
				</div>
				<div class="col-xs-12 col-sm-12 col-md-6 col-lg-3">
					<input type="text" placeholder="Segundo Nombre" name="segundonombre" required>
					<br><br>
				</div>
				
				<!-- campo priemr apellido -->
				<div class="hidden-xs hidden-sm hidden-md col-lg-3" align="right">
					<h4><p class="titulos">Primer&nbsp;Apellido</p></h4>
				</div>
				<div class="col-xs-12 col-sm-12 col-md-6 col-lg-3">
					<input type="text" placeholder="Primer Apellido" name="primerapellido" required>
					<br><br>
				</div>
				
				<!-- campo segundo apellido -->
				<div class="hidden-xs hidden-sm hidden-md col-lg-3" align="right">
					<h4><p class="titulos">Segundo&nbsp;Apellido</p></h4>
				</div>					
				<div class="col-xs-12 col-sm-12 col-md-6 col-lg-3">
					<input type="text" placeholder="Segundo Apellido" name="segundoapellido" required>
					<br><br>
				</div>
				
				<!-- campo estado civil -->
				<div class="hidden-xs hidden-sm hidden-md col-lg-3" align="right">
					<h4><p class="titulos">Estado&nbsp;civil</p></h4>
				</div>						
				<div class="col-xs-12 col-sm-12 col-md-6 col-lg-3">
				<select name="edo_civil" placeholder="edo_civil" style="padding: 15px 45px;">
					<option value="">---   SELECCIONE   ---</option>
					<option value="Soltero">Soltero</option>
					<option value="Casado">Casado</option>
					<option value="Viudo">Viudo</option>
					<option value="Divorciado">Divorciado</option>
				</select>
				<br><br>
				</div>
				
				<!-- campo telefono local -->
				<div class="hidden-xs hidden-sm hidden-md col-lg-3" align="right">
					<h4><p class="titulos">Tel&eacute;fono&nbsp;Local</p></h4>
				</div>	
				<div class="col-xs-12 col-sm-12 col-md-6 col-lg-3">
					<input type="int" placeholder="Tel&eacute;fono Local" name="telefono" required>
					<br><br>
				</div>
				
				<!-- campo telefono movil -->
				<div class="hidden-xs hidden-sm hidden-md col-lg-3" align="right">
					<h4><p class="titulos">Tel&eacute;fono&nbsp;Movil</p></h4>
				</div>	
				<div class="col-xs-12 col-sm-12 col-md-6 col-lg-3">
					<input type="int" placeholder="Tel&eacute;fono Movil" name="telefono" required>
					<br><br>
				</div>

				<!-- campo correo electronico -->
				<div class="hidden-xs hidden-sm hidden-md col-lg-3" align="right">
					<h4><p class="titulos">Correo&nbsp;Electronico</p></h4>
				</div>
				<div class="col-xs-12 col-sm-12 col-md-6 col-lg-3">
					<input type="email" placeholder="Correo" name="correo" required>
					<br><br>
				</div>




				<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
	    			<!-- campo cancelar -->
					<button type="button" onclick="location.href='../index.php'">Cancelar</button>
					<!-- campo siguiente -->
	    			<button type="submit">Siguiente</button>
	    		</div>
			</form>	
		</div>			
	</div>
</div>
<?php include('vistas/general/footer.html') ?>
<?php include('vistas/general/piepagina.html') ?>