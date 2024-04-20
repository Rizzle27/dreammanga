<?php
$mangas = (new Manga())->traer_catalogo_completo();

if (isset($_GET['id'])) {
    $mangaSeleccionado = $_GET['id'];
    $coleccion = (new Volumen())->traer_coleccion_completa($mangaSeleccionado);
} else if (!isset($_GET['id'])) {
    $coleccion = (new Volumen())->traer_todos_los_volumenes();
}
?>

<div class="row my-5 mx-2">
    <div class="col">
        <h1 class="text-center mb-5 fw-bold">Administración de <span style="color: #028171;">Volúmenes</span></h1>
        <div class="row mb-5 d-flex justify-content-center gap-3">
            <?php foreach ($coleccion as $volumen) { ?>
                <div class="card p-2 bg-transparent border border-light" style="width: 25rem;">
                    <div class="d-flex flex-column justify-content-between card-body text-light">
                        <div>
                            <div>
                                <p class="card-text my-2 fs-4">
                                    Número: <?= $volumen->getNumero() ?>
                                </p>
                            </div>
                            <div class="d-flex flex-column flex-sm-row gap-4 justify-content-center justify-content-sm-around">
                                <div>
                                    <img src="<?= $volumen->getPortadaGrande() ?>" height="300">
                                </div>
                                <div class="d-flex align-items-end">
                                    <img class="object-fit-contain" src="<?= $volumen->getPortadaChica() ?>" height="160">
                                </div>
                            </div>
                        </div>
                        <div id="edicion" class="d-flex flex-row justify-content-between align-items-center mt-3">
                            <p class="card-text my-2">
                                Id: <?= $volumen->getId() ?>
                            </p>
                            <div>
                                <a href="?seccion=editar_volumen&id=<?= $volumen->getId() ?>" role="button" id="btn-admin" class="btn btn-sm text-light" style="background-color: #028171;">Editar volumen</a>
                                <a href="?seccion=delete_volumen&id=<?= $volumen->getId() ?>" role="button" class="btn btn-sm text-light bg-danger">Eliminar</a>
                            </div>
                        </div>
                    </div>
                </div>
            <?php } ?>
            <a href="?seccion=add_volumen" class="btn my-3 fs-2 border border-light text-light col-10">+</a>
        </div>
    </div>
</div>