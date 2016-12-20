<?php 
	require 'vendor/autoload.php';
	$mail = new PHPMailer;
	$mail->isSMTP();
	$mail->Host = 'smtp.gmail.com';
	$mail->SMTPAuth = true;
	$mail->Username = 'mauriycf@gmail.com';
	$mail->Password = 'ycfmpkaer123';
	$mail->SMTPSecure = 'ssl';
	$mail->Port = 465;
	//$mail->SMTPDebug = 4;

	$address = $_POST['correo'];

	$mail->setFrom('mauriycf@gmail.com', 'pruebaDeMauricioConPhpMailer');
	$mail->addAddress($address, 'hola jose');

	$mail->isHTML( true);

	$mail->Subject = 'probando phpmailer';
	$mail->Body = 'Esto es una prueba de <b>phpmailer</b>';
	$mail->AltBody = 'Esto es otra prueba';

	if (!$mail->send()) {
		echo 'El mensaje no pudo ser enviado <br>';
		echo "Error de phpMailer " . $mail->ErrorInfo;
	}else{
		//echo "El mensaje ha sido enviado con exito";
	}