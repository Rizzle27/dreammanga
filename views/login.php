<section class="d-flex flex-column justify-content-center my-5">
    <div class="w-75 m-auto">
        <h1 class="my-4 text-center">Iniciar Sesión</h1>
    </div>
    <form class="d-flex flex-column align-items-center" action="admin/actions/auth_login.php" method="POST">
        <div class="col-10 col-sm-8 col-md-6 col-lg-4 mb-3">
            <label for="nombreUsuario" class="form-label">Nombre de Usuario</label>
            <input type="text" class="form-control" id="nombreUsuario" name="nombreUsuario" required>
        </div>

        <div class="col-10 col-sm-8 col-md-6 col-lg-4 mb-3">
            <label for="contraseña" class="form-label">Contraseña</label>
            <input type="password" class="form-control" id="contraseña" name="contraseña" required>
        </div>

        <button type="submit" class="btn col-10 col-sm-8 col-md-6 col-lg-4 text-light my-3" style="background-color: #028171;">Login</button>

        <p class="mb-4">¿Todavía no estás registrado? Hacé click acá para <a href="?seccion=registro" class="text-decoration-none">crear una cuenta</a>.</p>

        <?php if (isset($_SESSION["login"])) { ?>
            <a href="admin/actions/cerrar_sesion.php" role="button" class="btn col-10 col-sm-8 col-md-6 col-lg-4 text-light my-3 bg-danger">Cerrar sesión</a>
        <?php } ?>
    </form>
</section>