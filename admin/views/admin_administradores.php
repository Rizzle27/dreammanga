<?php
$usuarios = (new Usuario())->traer_usuarios_admin();
?>

<div class="row my-5 mx-5">
    <div class="col">
        <h1 class="text-center mb-5 fw-bold">Administración de <span style="color: #028171;">Administradores</span></h1>
        <div class="row mb-5 d-flex justify-content-center">
            <?php foreach ($usuarios as $usuario) { ?>
                <div class="card col-10 col-md-6 col-lg-3 mx-3 my-4 p-2 bg-transparent border-0">
                    <div class="d-flex flex-column justify-content-between card-body text-light">
                        <div>
                            <h5 class="card-title mt-1 mb-3">
                                <?= $usuario->getNombreUsuario() ?>
                            </h5>
                            <p class="card-text my-2">
                                Nombre: <b><?= $usuario->getNombreCompleto() ?></b>
                            </p>
                            <p class="card-text my-2">
                                Mail: <b><?= $usuario->getEmail() ?></b>
                            </p>
                            <p class="card-text my-2">
                                Rol: <b><?= $usuario->getRol() ?></b>
                            </p>
                        </div>
                        <div id="edicion">
                            <p class="card-text my-2">
                                Id: <?= $usuario->getId() ?>
                            </p>
                        </div>
                        <div>
                            <a href="?seccion=delete_admin&id=<?= $usuario->getId() ?>" role="button" class="btn btn-sm text-light col-12 bg-danger">Quitar adminitrador</a>
                        </div>
                    </div>
                </div>
            <?php } ?>
            <a href="?seccion=add_admin" class="btn fs-2 border border-light text-light col-10">+</a>
        </div>
    </div>
</div>