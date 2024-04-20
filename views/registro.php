<section class="d-flex flex-column justify-content-center my-5">
    <div class="w-75 m-auto">
        <h1 class="my-4 text-center">Iniciar Sesión</h1>
    </div>
    <form class="d-flex flex-column align-items-center" action="admin/actions/registro_acc.php" method="POST">
        <div class="col-10 col-sm-8 col-md-6 col-lg-4 mb-3">
            <label for="email" class="form-label">Email</label>
            <input type="email" class="form-control" id="email" name="email" required>
        </div>

        <div class="col-10 col-sm-8 col-md-6 col-lg-4 mb-3">
            <label for="nombreCompleto" class="form-label">Nombre Completo</label>
            <input type="text" class="form-control" id="nombreCompleto" name="nombreCompleto" required>
        </div>

        <div class="col-10 col-sm-8 col-md-6 col-lg-4 mb-3">
            <label for="nombreUsuario" class="form-label">Nombre de Usuario</label>
            <input type="text" class="form-control" id="nombreUsuario" name="nombreUsuario" required>
        </div>

        <div class="col-10 col-sm-8 col-md-6 col-lg-4 mb-3">
            <label for="contraseña" class="form-label">Contraseña</label>
            <input type="password" class="form-control" id="contraseña" name="contraseña" required>
        </div>

        <button type="submit" class="btn col-10 col-sm-8 col-md-6 col-lg-4 text-light my-3" style="background-color: #028171;">Registrarse</button>

        <p>¿Ya tenés una cuenta? Hacé click acá para <a href="?seccion=login" class="text-decoration-none">iniciar Sesión</a>.</p>
    </form>
</section>