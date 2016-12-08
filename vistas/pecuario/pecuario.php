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
	      			<p class="h4 subtitulos img-rounded"><b>Sub-Sector Pecuario</b></p>
	      				<div class="row">
	      					<div class="col-lg-6">
	      						<div class="div-img " >
								<a href="porcino.php"><img class="img" src="../images/" title="Porcino" alt="Porcino"></a>
    								<div class="text">Porcino</div>
  							</div>
	      					</div>
	      					<div class="col-lg-6">
	      						<div class="div-img" >
								<a href="avicola.php"><img class="img" src="../images/" title="Avicola" alt="Avicola"></a>
    								<div class="text">Avicola</div>
  							</div>
	      					</div>
	      					<div class="col-lg-6">
	      						<div class="div-img" >
								<a href="apicola.php"><img class="img" src="../images/" title="Apicola" alt="Apicola"></a>
    								<div class="text">Apicola</div>
  							</div>
	      					</div>
	      					<div class="col-lg-6">
	      						<div class="div-img" >
								<a href="cunicula.php"><img class="img" src="../images/" title="Cunicula" alt="Cunicula"></a>
    								<div class="text">Cunicula</div>
  							</div>
	      					</div>
	      					<div class="col-lg-6">
	      						<div class="div-img" >
								<a href="pecuario1.php?sector=Bovino"><img class="img" src="../images/" title="Bovino" alt="Bovino"></a>
    								<div class="text">Bovino</div>
  							</div>
	      					</div>
	      					<div class="col-lg-6">
	      						<div class="div-img" >
								<a href="pecuario1.php?sector=Bufalino"><img class="img" src="../images/" title="Bufalino" alt="Bufalino"></a>
    								<div class="text">Bufalino</div>
  							</div>
	      					</div>
	      					<div class="col-lg-6">
	      						<div class="div-img" >
								<a href="pecuario1.php?sector=Caprino"><img class="img" src="../images/" title="Caprino" alt="Caprino"></a>
    								<div class="text">Caprino</div>
  							</div>
	      					</div>
	      					<div class="col-lg-6">
	      						<div class="div-img" >
								<a href="pecuario1.php?sector=Ovino"><img class="img" src="../images/" title="Ovino" alt="Ovino"></a>
    								<div class="text">Ovino</div>
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
