<?php
$editoriales = (new Editorial())->traer_editorial_completa();
?>

<div class="row my-5 mx-5">
    <div class="col">
        <h1 class="text-center mb-5 fw-bold">Administración de <span style="color: #028171;">Editoriales</span></h1>
        <div class="row mb-5 d-flex justify-content-center">
            <?php foreach ($editoriales as $editorial) { ?>
                <div class="card col-10 col-md-6 col-lg-3 mx-3 my-4 p-2 bg-transparent border-0">
                    <div class="d-flex flex-column justify-content-between card-body text-light">
                        <div>
                            <h5 class="card-title mt-1 mb-3">
                                <?= $editorial->getNombre() ?>
                            </h5>
                            <img src="../images/editoriales/<?= $editorial->getLogo() ?>" height="140">
                            <p class="card-text my-2">
                                Orígen: <b><?= $editorial->getOrigen() ?></b>
                            </p>
                            <p class="card-text my-2">
                                Fundación: <b><?= $editorial->getFundacion() ?></b>
                            </p>
                        </div>
                        <div id="edicion">
                            <p class="card-text my-2">
                                Id: <?= $editorial->getId() ?>
                            </p>
                            <a href="?seccion=editar_editorial&id=<?= $editorial->getId() ?>" role="button" id="btn-admin" class="btn btn-sm text-light" style="background-color: #028171;">Editar editorial</a>
                        </div>
                    </div>
                </div>
            <?php } ?>
            <a href="?seccion=add_editorial" class="btn fs-2 border border-light text-light col-10">+</a>
        </div>
    </div>
</div>