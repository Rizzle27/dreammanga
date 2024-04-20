<div class="d-flex flex-column justify-conent-center p-5">
    <div class="m-auto">
        <h1 class="text-center mb-5 fw-bold">PANEL DE CONTROL</h1>
    </div>
    <div class="row mb-5 d-flex text-center align-items-center">
        <div>
            <img src="../images/iconos/bienvenido.png" alt="ícono de bienvenida">
        </div>
        <h2 class="mb-4">¡Bienvenido <?= $_SESSION["login"]["nombre"] ?>!</h2>
        <p class="mb-5 fs-5">Estás en la sección de administrador, dónde podes editar, añadir o eliminar Mangas, Volúmenes, Editoriales, Escritores y Administradores. ¡Divertite!</p>
        <h3 class="mb-5">¿Qué necesitas hacer?</h4>
        <div class="d-flex flex-wrap gap-5 justify-content-center">
            <a href="index.php?seccion=admin_mangas" id="btn-admin" role="button" class="btn btn-sm text-light fs-5" style="background-color: #028171;">Administrar Mangas</a>
            <a href="index.php?seccion=admin_volumenes" id="btn-admin" role="button" class="btn btn-sm text-light fs-5" style="background-color: #028171;">Administrar Volúmenes</a>
            <a href="index.php?seccion=admin_editoriales" id="btn-admin" role="button" class="btn btn-sm text-light fs-5" style="background-color: #028171;">Administrar Editoriales</a>
            <a href="index.php?seccion=admin_escritores" id="btn-admin" role="button" class="btn btn-sm text-light fs-5" style="background-color: #028171;">Administrar Escritores</a>
            <a href="index.php?seccion=admin_administradores" id="btn-admin" role="button" class="btn btn-sm text-light fs-5" style="background-color: #028171;">Administrar Administradores</a>
        </div>
    </div>
</div>