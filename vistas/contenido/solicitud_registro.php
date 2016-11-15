<?php session_start(); ?>
<html>
<head>
	<title> RUNOPPA </title>
	<link rel="shortcut icon" href="../images/icono.png">
	<link rel="stylesheet" type="text/css" href="../css/mainstyle.css">
	<link href="../css/bootstrap.min.css" rel="stylesheet">
	<link href="../css/style.css" rel="stylesheet">
	<script type="text/javascript" src="../js/bootstrap.min.js"></script>
	<script type="text/javascript" src="../libreria/jquery/jquery.js"></script>
	<script type="text/javascript">
		function mostrar(id) {
		    if (id == "form1") {
			$("#form1").show();
			$("#form2").hide();
			$("#form3").hide();
		    }

		    if (id == "form2") {
			$("#form1").hide();
			$("#form2").show();
			$("#form3").hide();
		    }

		    if (id == "form3") {
			$("#form1").hide();
			$("#form2").hide();
			$("#form3").show();
		    }
		}

		function mensaje()
		{
			alert("Su solicitud esta siendo procesada. Proximamente lo contactaremos");
			window.location="../index.php";
			//location.href = "../index.php";
			//document.location.href="../index.php";s
		}

	</script>
</head>
<body>

	<header>
		<?php include 'general/header_interno.html'?>
	</header>
	
	<?php $id=$_GET['id'];?>
	
<div class="container">
		
<!-- **********************************************************************************************************************************-->

		<div class="subcolumna rounded_borders col-xs-12 col-sm-12 col-md-6 col-lg-6" style="width: 100%;">
			<div class="row">
				<h4><p class="subtitulos img-rounded" align="center">Solicitud de Registro</p></h4>
				<form action="" method="post">
					</br>
					<div class="hidden-xs hidden-sm hidden-md col-lg-3" align="left">
						<h4><p class="titulos">Tipo&nbsp;de&nbsp;Tenencia</p></h4>
					</div>
					<div class="col-xs-12 col-sm-12 col-md-6 col-lg-9" align="left">
						<select id="status" name="selector" onChange="mostrar(this.value);">
								<option value="">---   TIPO TENENCIA   ---</option>
							<?php if($id=='natural'){ ?>
								<option value="form1">Autenticacion individual</option>
								<option value="form1">Derecho de Permanencia Individual</option>
							<?php } else { ?>				
								<option value="form1">Derecho de Permanencia Colectiva</option>
								<option value="form1">Adjudicacion Colectiva</option>
							<?php } ?>				
								<option value="form1">Autorizacion del MINEA</option>
								<option value="form1">Titulo de Tierra Pueblo Indigena</option>
								<option value="form1">Autorizacion del INEA</option>
								<option value="form1">Registro de Hierro y Se&ntilde;ales</option>
								<option value="form3">Contrato de Arrendamiento</option>
								<option value="form3">Contrato de Medianero</option>
								<option value="form2">Propiedad Privada</option>
						</select>
						<br><br>
					</div>
				</form>
			</div>
			
	<!-- **********************************************************************************************************************************-->

		<div id="form1" class="col-xs-12 col-sm-12 col-md-12 col-lg-12" style="display: none;">
			<fieldset class="fsStyle">
				<legend class="legendStyle"></legend>
				<div class="row collapse in" id="demo"></div>
			</fieldset>
			<div class="row">	
			    <form action="" method="post" class="centered">
		    		<div class="hidden-xs hidden-sm hidden-md col-lg-6" align="right">
			    		<h4><p class="titulos">Instituci&oacute;n&nbsp;que&nbsp;emite&nbsp;el&nbsp;permiso</p></h4>
			    	</div>							
					<div class="col-xs-12 col-sm-12 col-md-3 col-lg-6">	
						<select name="institucion" style="width: 250px">
							<option value="">---   INSTITUCIÓN  ---</option>
							<option value="Inti">INTI</option>			
							<option value="Inea">INEA</option>			
							<option value="Minea">MINEA</option>			
						</select>
						<br/><br/>
					</div>
					<div class="hidden-xs hidden-sm hidden-md col-lg-6" align="right">
						<h4><p class="titulos">N&#176; de Documento</p></h4>
					</div>
					<div class="col-xs-12 col-sm-12 col-md-6 col-lg-6" > 
						<input type="text" placeholder="N&#176;&nbsp;de&nbsp;Documento" name="n_permiso">
						<br><br>
					</div>
			    	<div class="hidden-xs hidden-sm hidden-md col-lg-6" align="right">
			    		<h4><p class="titulos">Fecha&nbsp;de&nbsp;Emisi&oacute;n</p></h4>
			    	</div>						
					<div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
						<input type="date" placeholder="fecha de emision" name="fec_emi" style="width: 250px">
						<br><br>
					</div>				
					<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
						<button type="button" onclick="location.href=''">Volver</button>
	            		<button type="" onclick="mensaje();">Guardar</button>
					</div>
			    </form>
		    </div>
		</div>
		
	<!-- **********************************************************************************************************************************-->

		<div id="form2" class="col-xs-12 col-sm-12 col-md-12 col-lg-12" style="display: none;">
			<fieldset class="fsStyle">
				<legend class="legendStyle"></legend>
				<div class="row collapse in" id="demo"></div>
			</fieldset>
			<div class="row">
			    <form action="" method="post" class="centered">
						<div class="hidden-xs hidden-sm col-md-3 col-lg-3" align="left">
			    			<h4><p class="titulos">Registro</p></h4>
			    		</div>							
						<div class="col-xs-12 col-sm-12 col-md-3 col-lg-3">	
							<select name="registro" style="width: 250px">
								<option value="">---   REGISTRO   ---</option>
								<option value="Principal">Principal</option>			
								<option value="Publico">Publico</option>			
								<option value="Sub-Alterno">Sub-Alterno</option>			
								<option value="Mercantil">Mercantil</option>			
								<option value="Notaria Publica">Notaria Publica</option>			
							</select>
							<br><br>
						</div>									
						<div class="hidden-xs hidden-sm col-md-3 col-lg-3">
							<h4><p class="titulos">Estado</p></h4>
						</div>
						<div class="col-xs-12 col-sm-12 col-md-3 col-lg-3"> 
							<select name="estado" style="width: 250px">
								<option value="">---   ESTADO   ---</option>
								<option value="amazonas">Amazonas</option>			
								<option value="anzoategui">Anzoategui</option>		
							</select>
							<br><br>
						</div>
						<div class="hidden-xs hidden-sm col-md-3 col-lg-3">
							<h4><p class="titulos">Municipio</p></h4>
						</div>
						<div class="col-xs-12 col-sm-12 col-md-3 col-lg-3"> 
							<select name="estado" style="width: 250px">
								<option value="">---   MUNICIPIO   ---</option>
								<option value="libertador">Libertador</option>			
								<option value="chacao">Chacao</option>		
							</select>
							<br><br>
						</div>
						<div class="hidden-xs hidden-sm col-md-3 col-lg-3">
							<h4><p class="titulos">N&#176;&nbsp;de&nbsp;Tomo</p></h4>
						</div>
						<div class="col-xs-12 col-sm-12 col-md-3 col-lg-3">  
							<input type="text" placeholder="N&#176; de Tomo" name="n_tomo">
							<br><br>
						</div>
						<div class="hidden-xs hidden-sm col-md-3 col-lg-3">
							<h4><p class="titulos">Fecha&nbsp;de&nbsp;Emisi&oacute;n</p></h4>
						</div>
						<div class="col-xs-12 col-sm-12 col-md-3 col-lg-3">  
							<input type="date" placeholder="Fecha de Emisi&oacute;n"name="fec_reg" style="width: 250px">
							<br><br>
						</div>					
						<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
							<button type="button" onclick="location.href=''">Volver</button>
			            	<button type="" onclick="mensaje();">Guardar</button>
						</div>
			    </form>	
		    </div>
		</div>
		
	<!-- *****************************************************************************************************************************-->
			
		<div id="form3" class="col-xs-12 col-sm-12 col-md-12 col-lg-12" style="display: none;">
			<?php if($id=='natural'){ ?>				
			<fieldset class="fsStyle">
				<legend class="legendStyle"></legend>
				<div class="row collapse in" id="demo"></div>
			</fieldset>
			<div class="row">
				<form action="" method="POST" centered>
					
						<div class="hidden-xs hidden-sm col-md-3 col-lg-3" align="left">
			    			<h4><p class="titulos">C&eacute;dula</p></h4>
			    		</div>
			    		<div class="col-xs-12 col-sm-12 col-md-3 col-lg-9">  
							<input type="text" name="cedula" placeholder="Cedula">
							<br><br>
						</div>
						<div class="hidden-xs hidden-sm col-md-3 col-lg-3" align="left">
			    			<h4><p class="titulos">Primer&nbsp;Nombre</p></h4>
			    		</div>
			    		<div class="col-xs-12 col-sm-12 col-md-3 col-lg-3">  
							<input type="text" name="primernombre" placeholder="Primer Nombre">
							<br><br>
						</div>							
						<div class="hidden-xs hidden-sm col-md-3 col-lg-3" align="left">
			    			<h4><p class="titulos">Segundo&nbsp;Nombre</p></h4>
			    		</div>
			    		<div class="col-xs-12 col-sm-12 col-md-3 col-lg-3">  
							<input type="text" name="primernombre" placeholder="Segundo Nombre">
							<br><br>
						</div>		
						<div class="hidden-xs hidden-sm col-md-3 col-lg-3" align="left">
			    			<h4><p class="titulos">Primer&nbsp;Apellido</p></h4>
			    		</div>
			    		<div class="col-xs-12 col-sm-12 col-md-3 col-lg-3">  
							<input type="text" name="apellido" placeholder="Apellido">
							<br><br>
						</div>								
						<div class="hidden-xs hidden-sm col-md-3 col-lg-3" align="left">
			    			<h4><p class="titulos">Segundo&nbsp;Apellido</p></h4>
			    		</div>
			    		<div class="col-xs-12 col-sm-12 col-md-3 col-lg-3">  
							<input type="text" name="apellido" placeholder="Apellido">
							<br><br>
						</div>															
						<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
							<button type="button" onclick="location.href=''">Volver</button>
							<button type="" onclick="mensaje();">Guardar</button>
						</div>							
				</form>
			</div>
			<?php }else{ ?>
				<form action="" method="POST">
					<br>
					<input type="text" name="rif" placeholder="RIF"><br>
					<input type="text" name="raz_soc" placeholder="Razon Soc&iacute;al"><br>
					<button type="button" onclick="location.href=''">Volver</button>
				    <button type="" onclick="mensaje();">Guardar</button>
				</form>
			<?php } ?>	
		</div>
	<!-- *****************************************************************************************************************************-->
	</div>
<!-- *****************************************************************************************************************************-->
</div>
	<footer>
		<?php include 'general/footer_interno.html'?>
	</footer>
</body>
</html>
