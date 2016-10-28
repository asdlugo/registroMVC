<?php include('vistas/general/encabezado.html') ?>

<body>
    <div class="container">
        <div class="card card-container">
            <img id="profile-img" class="profile-img-card" src="//ssl.gstatic.com/accounts/ui/avatar_2x.png" />
            <p id="profile-name" class="profile-name-card"></p>
            <form class="form-signin" action="/nucleo/controladores/controladorAcceso.php" method="post">
                <span id="reauth-email" class="reauth-email"></span>
                <input name="usuario" type="text" id="inputEmail" class="form-control" placeholder="Usuario" required autofocus>
                <input name="contraseña" type="password" id="inputPassword" class="form-control" placeholder="Contraseña" required>
                <div id="remember" class="checkbox">
                    <label>
                        <input type="checkbox" value="remember-me"> Recordarme
                    </label>
                </div>
                <button class="btn btn-lg btn-primary btn-block btn-signin" type="submit">Enviar</button>
            </form><!-- /form -->
            <a href="#" class="forgot-password">
                Olvido su contraseña?
            </a>
        </div><!-- /card-container -->
    </div><!-- /container -->


<?php include('vistas/general/piepagina.html') ?>