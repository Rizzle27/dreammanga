<nav class="navbar navbar-expand-md navbar-dark" style="background-color: #028171;">
    <div class="container-fluid">
        <a class="navbar-brand ms-1" href="../index.php">
            <h2 class="fs-4">DreamManga</h2>
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#menu" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="menu">
            <ul class="navbar-nav ms-1 me-auto">
                <li class="nav-item"><a class="nav-link <?php if (!isset($_GET['seccion'])) { ?>active<?php } ?>" href="./">Panel de Control</a></li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle <?php if (isset($_GET['seccion']) && $_GET['seccion'] != "login") { ?>active<?php } ?>" id="navbarDropdown" role="button" data-bs-toggle="dropdown" href="#">
                        <?php
                        if (isset($_GET['seccion']) && $_GET['seccion'] == 'admin_mangas') {
                            echo "Admin Mangas";
                        } else if (isset($_GET['seccion']) && $_GET['seccion'] == 'admin_escritores') {
                            echo "Admin Escritores";
                        } else if (isset($_GET['seccion']) && $_GET['seccion'] == 'admin_editoriales') {
                            echo "Admin Editoriales";
                        } else {
                            echo "Admin";
                        };
                        ?>
                    </a>
                    <ul id="dropdownContenido" class="dropdown-menu px-2 bg-dark border-0 rounded-0">
                        <li><a class="dropdown-item text-light mt-1 mb-3 <?php if (isset($_GET['seccion']) && $_GET['seccion'] == 'admin_mangas') { ?>active<?php } ?>" href="index.php?seccion=admin_mangas">Mangas</a></li>
                        <li><a class="dropdown-item text-light mt-1 mb-3 <?php if (isset($_GET['seccion']) && $_GET['seccion'] == 'admin_escritores') { ?>active<?php } ?>" href="index.php?seccion=admin_escritores">Escritores</a></li>
                        <li><a class="dropdown-item text-light mt-1 mb-3 <?php if (isset($_GET['seccion']) && $_GET['seccion'] == 'admin_editoriales') { ?>active<?php } ?>" href="index.php?seccion=admin_editoriales">Editoriales</a></li>
                    </ul>
                </li>
            </ul>
            <hr class="text-white-50">

            <ul class="navbar-nav flex-row flex-wrap light">
                <li class="nav-item col-6 col-md-auto px-2 px-lg-4">
                    <a class="text-decoration-none text-light" target="_blank" href="https://www.linkedin.com/in/lucasgarcia0027/"><img src="../images/iconos/linkedin/icons8-linkedin-24.png" alt="Logo Linkedin"><small class="d-md-none ms-2">Linkedin</small></a>
                </li>

                <li class="nav-item col-6 col-md-auto px-2 px-lg-4">
                    <a class="text-decoration-none text-light" target="_blank" href="https://www.instagram.com/lucasgarcia0027/"><img src="../images/iconos/instagram/icons8-instagram-24.png" alt="Logo instagram"><small class="d-md-none ms-2">Instagram</small></a>
                </li>

                <li class="nav-item col-6 col-md-auto px-2 px-lg-4">
                    <a class="text-decoration-none text-light" target="_blank" href="https://twitter.com/lucasgarcia0027"><img src="../images/iconos/twitter/icons8-twitter-24.png" alt="Logo twitter"><small class="d-md-none ms-2">Twitter</small></a>
                </li>

                <li class="nav-item col-6 col-md-auto px-2 px-lg-4">
                    <a class="text-decoration-none text-light" target="_blank" href="https://www.youtube.com/channel/UCpvlKU0oOtFSlIAcr6jBRVg"><img src="../images/iconos/youtube/icons8-youtube-24.png" alt="Logo youtube"><small class="d-md-none ms-2">YouTube</small></a>
                </li>
            </ul>
        </div>
    </div>
</nav>