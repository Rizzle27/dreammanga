<?php
require_once "functions/autoload.php";
?>

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
                    echo '<a href="index.php?seccion=catalogo&genero=accion" class="text-decoration-none text-light">Acción</a>';
                } else if ($manga->getGenero() == 'deportes') {
                    echo '<a href="index.php?seccion=catalogo&genero=deportes" class="text-decoration-none text-light">Deportes</a>';
                } else if ($manga->getGenero() == 'musical') {
                    echo '<a href="index.php?seccion=catalogo&genero=musical" class="text-decoration-none text-light">Musical</a>';
                } else if ($manga->getGenero() == 'romance') {
                    echo '<a href="index.php?seccion=catalogo&genero=romance" class="text-decoration-none text-light">Romance</a>';
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
            <div class="d-flex justify-content-center">
                <a style="color: #019c87 !important;" href="index.php?id=<?= $manga->getId() ?>&volumen=1" class="btn text-light fw-bold">Ver más</a>
            </div>
        </div>
        
    </div>
</div>