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
			$("#form4").hide();
		    }

		    if (id == "form2") {
			$("#form1").hide();
			$("#form2").show();
			$("#form3").hide();
			$("#form4").hide();
		    }

		    if (id == "form3") {
			$("#form1").hide();
			$("#form2").hide();
			$("#form3").show();
			$("#form4").hide();
		    }

		    if (id == "form4") {
			$("#form1").hide();
			$("#form2").hide();
			$("#form3").hide();
			$("#form4").show();
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
		<div class="subcolumna subcolumna2 rounded_borders"> 
			<a href="pef/ayuda.pdf"><img class="info" title="Ayuda" src="../images/info.png"></a>
			<p class="title subtitulos rounded_borders">Solicitud de Registro</p>
		<form action="" method="post">
		<div class="campo_left">
			Indique la Modalidad de Tenencia de Tierra
			<select id="status" name="selector" style="color:#035013" onChange="mostrar(this.value);">
					<option value="">---SELECCIONE---</option>
				<?php if($id=='natural'){ ?>
					<option value="form1">Adjudicacion individual</option>
					<option value="form1">Autorizacion del INEA</option>
					<option value="form1">Garantia de Permanencia Individual</option>
				<?php } else { ?>				
					<option value="form1">Adjudicacion Colectiva</option>
					<option value="form1">Garantia de Permanencia Colectiva</option>
					
				<?php } ?>				
					<option value="form1">Autorizacion del MINEA</option>
					<option value="form4">Contrato de Arrendamiento</option>
					<option value="form4">Contrato de Medianero</option>
					<option value="form3">Propiedad Privada</option>
					<option value="form3">Registro de Hierro y Se&ntilde;ales</option>
					<option value="form3">Titulo de Tierra de Pueblo Indigena</option>
					
			</select>
		</div>
		</form>

		<div id="form1" style="display: none;">
		    <form action="" method="post" class="centered">
			<div class="campo_left">
				Institución emite permiso						
				<select name="institucion" style="color:#035013">
					<option value="Inti">INTI</option>			
					<option value="Inea">INEA</option>			
					<option value="Minea">MINEA</option>			
				</select> 
			</div>
			<div class="campo_center">
				N&#176; de Permiso
				<input type="text" placeholder="N&#176; de permiso" name="n_permiso">
			</div>			
			<div class="campo_right">
				Fecha de Emisi&oacute;n		
				<input type="date" placeholder="fecha de emision" name="fec_emi">
			</div>

			<button type="button" onclick="location.href=''">Volver</button>
            		<button type="" onclick="mensaje();">Guardar</button>
		    </form>
		</div>	
		<div id="form2" style="display: none;">
		    <form action="" method="post" class="centered">
			<div class="campo_left">
				Registro									
				<select name="registro" style="color:#035013">
					<option value="Principal">Principal</option>			
					<option value="Publico">Publico</option>			
					<option value="Sub-Alterno">Sub-Alterno</option>			
					<option value="Mercantil">Mercantil</option>			
					<option value="Notaria Publica">Notaria Publica</option>			
				</select>
			</div>
			<div class="campo_center">
			Fecha de Registro:		
				<input type="date" placeholder="Fecha de Registro"name="fec_reg">
 			</div>
    			<div class="campo_right">
			N° Tomo:
				<input type="text" placeholder="N&#176; de Tomo" name="n_tomo">
			</div>
			<div class="campo_left">
                        Estado:
				<input type="text" placeholder="Estado" name="estado">
			</div>
			<div class="campo_center">
			Municipio:
				<input type="text" placeholder="Municipio" name="municipio">
                        </div>
			<button type="button" onclick="location.href=''">Volver</button>
            		<button type="" onclick="mensaje();">Guardar</button>
		    </form>
		</div>	
		<div id="form3" class="centered" style="display: none;">
			<?php if($id=='natural'){ ?>				
				<form action="" method="POST">
			<div class="campo_left">
			  Cedula:
				<input type="text" name="cedula" placeholder="Cedula">
			</div>
			<div class="campo_center">
			  Nombre:				
				<input type="text" name="nombre" placeholder="Nombre">
			</div>
			<div class="campo_right">
			  Apellido:
				<input type="text" name="apellido" placeholder="Apellido">
			</div>
			<div class="campo_left">
				Registro									
				<select name="registro" style="color:#035013">
					<option value="Principal">Principal</option>			
					<option value="Publico">Publico</option>			
					<option value="Sub-Alterno">Sub-Alterno</option>			
					<option value="Mercantil">Mercantil</option>			
					<option value="Notaria Publica">Notaria Publica</option>			
				</select>
			</div>
			<div class="campo_center">
			Fecha de Registro:		
				<input type="date" placeholder="Fecha de Registro"name="fec_reg">
 			</div>
    			<div class="campo_right">
			N° Tomo:
				<input type="text" placeholder="N&#176; de Tomo" name="n_tomo">
			</div>
			<div class="campo_left">
				N&#176; de Permiso
				<input type="text" placeholder="N&#176; de permiso" name="n_permiso">
			</div>			
				       <button type="button" onclick="location.href=''">Volver</button>
				    	<button type="" onclick="mensaje();">Guardar</button>
				</form>
			<?php }else{ ?>
				<form action="" method="POST">
				<div class="campo_left">
					Registro de Informacion Fiscal(Rif)
					<input type="text" name="rif" placeholder="RIF">
				</div>
				<div class="campo_center">
					Razon Soc&iacute;al
					<input type="text" name="raz_soc" placeholder="Razon Soc&iacute;al">
				</div>
				<div class="campo_right">
				Registro									
				<select name="registro" style="color:#035013">
					<option value="Principal">Principal</option>			
					<option value="Publico">Publico</option>			
					<option value="Sub-Alterno">Sub-Alterno</option>			
					<option value="Mercantil">Mercantil</option>			
					<option value="Notaria Publica">Notaria Publica</option>			
				</select>
			</div>
			<div class="campo_left">
			Fecha de Registro:		
				<input type="date" placeholder="Fecha de Registro"name="fec_reg">
 			</div>
    			<div class="campo_center">
			N° Tomo:
				<input type="text" placeholder="N&#176; de Tomo" name="n_tomo">
			</div>
			<div class="campo_right">
				N&#176; de Permiso
				<input type="text" placeholder="N&#176; de permiso" name="n_permiso">
			</div>
					<button type="button" onclick="location.href=''">Volver</button>
				    	<button type="" onclick="mensaje();">Guardar</button>
				</form>
			<?php } ?>
		</div>
		<div id="form4" style="display: none;">
		    <form action="" method="post" class="centered">
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
				<div class="campo_center">	
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
						Fecha de Nacimiento
						<input type="date" placeholder="Fecha" name="fecha_nac" required>
					</div>
			<div class="campo_center">
                        Género:
				<select name="genero" placeholder="género" style="color:#035013">
							<option value="">---   SELECCIONE   ---</option>
							<option value="Soltero">Femenino</option>
							<option value="Casado">Masculino</option>
						</select>
	            </div>
						<button type="button" onclick="location.href=''">Volver</button>
				    	<button type="" onclick="mensaje();">Guardar</button>
	</form>
	<footer>
		<?php include 'general/footer_interno.html'?>
	</footer>
</body>
</html>
















