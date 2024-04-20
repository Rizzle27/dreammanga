<nav class="navbar navbar-expand-md navbar-dark" style="background-color: #790cc7;">
    <div class="container-fluid">
        <a class="navbar-brand ms-1" href="./">
            <h2 class="d-block d-md-none d-lg-block fs-4">DreamManga</h2>
            <h2 class="d-none d-md-block d-lg-none fs-4">DM</h2>
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#menu"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="menu">
            <ul class="navbar-nav ms-1 me-auto">
                <li class="nav-item"><a class="nav-link <?php if (!isset($_GET['seccion'])) { ?>active<?php } ?>"
                        href="index.php">Inicio</a></li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle <?php if (isset($_GET['genero'])) { ?>active<?php } ?>"
                        id="navbarDropdown" role="button" data-bs-toggle="dropdown" href="#"><?php
                        if (isset($_GET['genero']) && $_GET['genero'] == 'accion') {
                            echo "Acción";
                        } else if (isset($_GET['genero']) && $_GET['genero'] == 'deportes') {
                            echo "Deportes";
                        } else if (isset($_GET['genero']) && $_GET['genero'] == 'musical') {
                            echo "Musical";
                        } else if (isset($_GET['genero']) && $_GET['genero'] == 'romance') {
                            echo "Romance";
                        } else if (isset($_GET['genero']) && $_GET['genero'] == 'catalogo') {
                            echo "Catálogo";
                        } else {
                            echo "Explorar";
                        }
                        ;
                        ?></a>

                    <ul id="dropdownContenido" class="dropdown-menu px-2 bg-dark border-0 rounded-0">
                        <li><a class="dropdown-item text-light mt-1 mb-3 <?php if (isset($_GET['genero']) && $_GET['genero'] == 'catalogo') { ?>active<?php } ?>"
                                href="index.php?seccion=catalogo&genero=catalogo">Catátlogo completo</a></li>
                        <small id="generos" class="text-secondary text-uppercase">Géneros</small>
                        <li><a class="dropdown-item text-light my-2 <?php if (isset($_GET['genero']) && $_GET['genero'] == 'accion') { ?>active<?php } ?>"
                                href="index.php?seccion=catalogo&genero=accion">Acción</a></li>
                        <li><a class="dropdown-item text-light my-2 <?php if (isset($_GET['genero']) && $_GET['genero'] == 'deportes') { ?>active<?php } ?>"
                                href="index.php?seccion=catalogo&genero=deportes">Deportes</a></li>
                        <li><a class="dropdown-item text-light my-2 <?php if (isset($_GET['genero']) && $_GET['genero'] == 'musical') { ?>active<?php } ?>"
                                href="index.php?seccion=catalogo&genero=musical">Musical</a></li>
                        <li><a class="dropdown-item text-light my-2 <?php if (isset($_GET['genero']) && $_GET['genero'] == 'romance') { ?>active<?php } ?>"
                                href="index.php?seccion=catalogo&genero=romance">Romance</a></li>
                    </ul>
                </li>
                <li class="nav-item"><a
                        class="nav-link <?php if (isset($_GET['seccion']) && $_GET['seccion'] == 'carrito') { ?>active<?php } ?>"
                        href="?seccion=carrito">Carrito</a></li>
                <li class="nav-item"><a
                        class="nav-link <?php if (isset($_GET['seccion']) && $_GET['seccion'] == 'nosotros') { ?>active<?php } ?>"
                        href="?seccion=nosotros">Nosotros</a></li>
                <li class="nav-item"><a
                        class="nav-link <?php if (isset($_GET['seccion']) && $_GET['seccion'] == 'datos_alumnos') { ?>active<?php } ?>"
                        href="?seccion=datos_alumnos">Datos alumnos</a></li>
                        <li class="nav-item"><a
                        class="nav-link <?php if (isset($_GET['seccion']) && $_GET['seccion'] == 'login') { ?>active<?php } ?>"
                        href="?seccion=login"><?php if(isset($_SESSION["login"])) {
                            echo("Tú Cuenta");
                        } else {
                            echo("Iniciar Sesión");
                        } ?></a></li>
                        <?php if(isset($_SESSION["login"]) && $_SESSION["login"]["rol"] == "admin") { ?>
                        <li class="nav-item"><a
                                class="nav-link <?php if (isset($_GET['seccion']) && $_GET['seccion'] == 'admin') { ?>active<?php } ?>"
                                href="admin">Admin</a></li>
                        <?php } ?>
            </ul>
            <hr class="text-white-50">

            <ul class="d-flex gap-2 gap-lg-5 navbar-nav flex-wrap light">
                <li class="nav-item col-6 col-md-auto">
                    <a class="text-decoration-none text-light" target="_blank" href="https://www.linkedin.com/in/lucasgarcia0027/"><img
                            src="./images/iconos/linkedin/icons8-linkedin-24.png" alt="Logo Linkedin"><small
                            class="d-md-none ms-2">Linkedin</small></a>
                </li>

                <li class="nav-item col-6 col-md-auto">
                    <a class="text-decoration-none text-light" target="_blank"
                        href="https://www.instagram.com/lucasgarcia0027/"><img
                            src="./images/iconos/instagram/icons8-instagram-24.png" alt="Logo instagram"><small
                            class="d-md-none ms-2">Instagram</small></a>
                </li>

                <li class="nav-item col-6 col-md-auto">
                    <a class="text-decoration-none text-light" target="_blank"
                        href="https://twitter.com/lucasgarcia0027"><img
                            src="./images/iconos/twitter/icons8-twitter-24.png" alt="Logo twitter"><small
                            class="d-md-none ms-2">Twitter</small></a>
                </li>

                <li class="nav-item col-6 col-md-auto">
                    <a class="text-decoration-none text-light" target="_blank"
                        href="https://www.youtube.com/channel/UCpvlKU0oOtFSlIAcr6jBRVg"><img
                            src="./images/iconos/youtube/icons8-youtube-24.png" alt="Logo youtube"><small
                            class="d-md-none ms-2">YouTube</small></a>
                </li>
            </ul>
        </div>
    </div>
</nav>