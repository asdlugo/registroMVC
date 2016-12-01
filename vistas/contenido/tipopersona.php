<?php include("vistas/general/encabezado.html") ?>
<?php include("vistas/general/header.html") ?>
<?php 
// Si la sesion ya esta abierta no hay nada que hacer aqui y cargamos la pagina 1
if (isset($_SESSION["userid"]))
	header("location: index.php");
?>
<header>
	<?php include('general/header_interno.html') ?>
</header>
<div class="container">
  		<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
  			<div class="subcolumna2 rounded_borders">
  			<p class="h4 subtitulos img-rounded"><b>Tipo de Persona</b></p>
  				<div class="row">
  					<div class="col-lg-6">
  						<div class="div-img " >
					<a href="http://localhost/registroMVC/index.php?view=Registronatural"><img class="img" src="web/imagenes/persona.png" alt="Natural"></a>
					<div class="text">Natural</div> 
					</div>
  					</div>
  					<div class="col-lg-6">
  						<div class="div-img" >
						<a href="http://localhost/registroMVC/index.php?view=Registrojuridico"><img class="img" src="web/imagenes/juridico2.png" title="Juridico" alt="Juridico"></a>
						<div class="text">Juridico</div>
						</div>
  					</div>
  				</div>
  			</div>
  		</div>
	</div>
</div>
<?php include("vistas/general/footer.html") ?>

<?php include("vistas/general/piepagina.html") ?>