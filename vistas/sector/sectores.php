<?php session_start(); ?>
<!DOCTYPE html>
<html lang="es">
	<head>
	    <meta charset="utf-8">
	    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	    <meta name="viewport" content="width=device-width, initial-scale=1">
	    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
	    <title>RUNOPPA</title>
		<link rel="shortcut icon" href="../images/icono.png">
	    <!-- Bootstrap -->
	    <link href="../css/bootstrap.min.css" rel="stylesheet">
		<link href="../css/style.css" rel="stylesheet">
			<link rel="stylesheet" type="text/css" href="../css/mainstyle.css">
		<script type="text/javascript" src="../js/bootstrap.min.js"></script>
		    <script type="text/javascript" src='../js/jquery.min.js'></script>
	</head>
	
	<body>
		<header>
			<?php include 'general/header_interno.html'?>
		</header>
		<div class="container">
	      		<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
	      			<div class="subcolumna2">
	      			<p class="h4 subtitulos img-rounded"><b>Sectores</b></p>
	      				<div class="row">
	      					<div class="col-lg-6">
	      						<div class="div-img " >
								<a href="vegetal.php"><img class="img" src="../images/" title="Vegetal" alt="Vegetal"></a>
    								<div class="text">Vegetal</div>
  							</div>
	      					</div>
	      					<div class="col-lg-6">
	      						<div class="div-img" >
								<a href="pecuario.php"><img class="img" src="../images/" title="Pecuario" alt="Pecuario"></a>
    								<div class="text">Pecuario</div>
  							</div>
	      					</div>
	      					<div class="col-lg-6">
	      						<div class="div-img" >
								<a href="#"><img class="img" src="../images/" title="Agroindustrial" alt="Agroindustrial"></a>
    								<div class="text">Agroindustrial</div>
  							</div>
	      					</div>
	      				</div>
	      			</div>
	      		</div>
			</div>
		</div>
		<div class="row clearfix">
			<footer>
				<?php include 'general/footer_interno.html'?>
			</footer>			
		</div>

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
  </body>

</html>
