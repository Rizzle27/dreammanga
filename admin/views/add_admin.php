<section class="d-flex flex-column justify-content-center my-5">
    <div class="w-75 m-auto">
        <h1 class="my-4 text-center">Sesión del Nuevo Administrador</h1>
    </div>
    <form class="d-flex flex-column align-items-center" action="actions/add_admin_acc.php" method="POST">
        <div class="col-10 col-sm-8 col-md-6 col-lg-4 mb-3">
            <label for="nombreUsuario" class="form-label">Nombre de Usuario</label>
            <input type="text" class="form-control" id="nombreUsuario" name="nombreUsuario" required>
        </div>

        <div class="col-10 col-sm-8 col-md-6 col-lg-4 mb-3">
            <label for="contraseña" class="form-label">Contraseña</label>
            <input type="password" class="form-control" id="contraseña" name="contraseña" required>
        </div>

        <button type="submit" class="btn col-10 col-sm-8 col-md-6 col-lg-4 text-light my-3" style="background-color: #028171;">Añadir Administrador</button>
    </form>
</section>