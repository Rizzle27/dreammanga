<?php
$mangas = (new Manga())->traer_catalogo_completo();

$autores = new Escritor();
$escritores = $autores->traer_escritor_completo();

$editores = new Editorial();
$editoriales = $editores->traer_editorial_completa();
?>

<div class="row my-5 mx-5">
    <div class="col">
        <h1 class="text-center mb-5 fw-bold">Administración de <span style="color: #028171;">Mangas</span></h1>
        <div class="row mb-5 d-flex justify-content-center">
            <?php foreach ($mangas as $manga) { ?>
                <div id="cardManga" class="card xs-col-12 sm-col-6 mx-3 my-4 p-2" style="width: 18rem;">
                    <img src="<?= $manga->getPortada() ?>" class="portada" alt="Portada de <?= $manga->getTitulo() ?>">
                    <div class="d-flex flex-column justify-content-between card-body text-light">
                        <div>
                            <h5 class="card-title mt-1 mb-3">
                                <?= $manga->getTitulo() ?>
                            </h5>
                            <p class="card-text my-2">
                                <?= trim(substr($manga->getBajada(), 0, 125)) ?><span>...</span>
                            </p>
                        </div>
                        <div>
                            <p class="genero card-text d-inline-block px-2 my-2">
                                <?php
                                if ($manga->getGenero() == 'accion') {
                                    echo '<a href="../?seccion=catalogo&genero=accion" class="text-decoration-none text-light">Acción</a>';
                                } else if ($manga->getGenero() == 'deportes') {
                                    echo '<a href="../?seccion=catalogo&genero=deportes" class="text-decoration-none text-light">Deportes</a>';
                                } else if ($manga->getGenero() == 'musical') {
                                    echo '<a href="../?seccion=catalogo&genero=musical" class="text-decoration-none text-light">Musical</a>';
                                } else if ($manga->getGenero() == 'romance') {
                                    echo '<a href="../?seccion=catalogo&genero=romance" class="text-decoration-none text-light">Romance</a>';
                                } else {
                                    null;
                                }
                                ?>
                            </p>
                            <p class="d-block my-2">
                                Año de estreno:
                                <b><?= $manga->getEstreno() ?></b>
                            </p>
                            <p class="d-block my-2">
                                Editorial:
                                <b><?= $editores->traer_nombre_editorial($manga->getEditorialId()) ?></b>
                            </p>
                            <p class="d-block my-2">
                                Escritor:
                                <b><?= $autores->traer_nombre_escritor($manga->getEscritorId()) ?></b>
                            </p>
                            <b class="fs-5">$<?= $manga->getPrecio() ?></b>
                            <p class="card-text my-2">
                                Id: <?= $manga->getId() ?>
                            </p>
                            <div class="d-flex flex-column gap-2">
                                <div class="d-flex flex-column justify-content-center gap-1">
                                    <div class="d-flex gap-1 justify-content-center">
                                        <a href="?seccion=editar_manga&id=<?= $manga->getId() ?>" role="button" id="btn-admin" class="btn btn-sm text-light col-6" style="background-color: #028171;">Editar</a>

                                        <a href="?seccion=admin_volumenes&id=<?= $manga->getId() ?>" role="button" id="btn-admin" class="btn btn-sm text-light col-6" style="background-color: #028171;">Volúmenes</a>
                                    </div>
                                    <div>
                                        <a href="?seccion=delete_manga&id=<?= $manga->getId() ?>" role="button" class="btn btn-sm text-light col-12 bg-danger">Eliminar manga</a>
                                    </div>
                                </div>

                                <!-- <button class="btn btn-sm text-light bg-danger">Eliminar</button> -->
                            </div>
                        </div>
                    </div>
                </div>
            <?php } ?>
            <a href="?seccion=add_manga" class="btn fs-2 border border-light text-light col-10">+</a>
        </div>
    </div>
</div>