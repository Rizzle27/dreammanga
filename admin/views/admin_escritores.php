<?php
$escritores = (new Escritor())->traer_escritor_completo();
?>

<div class="row my-5 mx-5">
    <div class="col">
        <h1 class="text-center mb-5 fw-bold">Administración de <span style="color: #028171;">Escritores</span></h1>
        <div class="row mb-5 d-flex justify-content-center">
            <?php foreach ($escritores as $escritor) { ?>
                <div class="card col-12 col-sm-10 mx-3 my-2 p-2 bg-transparent border-0 text-center text-sm-start">
                    <div class="d-flex flex-column justify-content-between card-body text-light">
                        <div>
                            <h5 class="card-title mt-1 mb-3">
                                <?= $escritor->getNombre() ?>
                            </h5>
                            <p class="card-text my-2">
                                <?= $escritor->getBiografia() ?>
                            </p>
                        </div>
                        <div id="edicion">
                            <p class="card-text my-2">
                                Id: <?= $escritor->getId() ?>
                            </p>
                            <a href="?seccion=editar_escritor&id=<?= $escritor->getId() ?>" role="button" id="btn-admin" class="btn btn-sm text-light" style="background-color: #028171;">Editar escritor</a>
                        </div>
                    </div>
                </div>
            <?php } ?>
            <a href="?seccion=add_escritor" class="btn fs-2 border border-light text-light col-10">+</a>
        </div>
    </div>
</div>