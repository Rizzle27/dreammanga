<?php
require_once "functions/autoload.php";

$mangaSeleccionado = isset($_GET['id']) ? $_GET['id'] : false;
$volumenSeleccionado = isset($_GET['volumen']) ? $_GET['volumen'] : false;

$catalogo = new Manga();
$mangas = $catalogo->producto_x_id($mangaSeleccionado);

$coleccion = new Volumen();
$volumenes = $coleccion->traer_coleccion_completa($mangaSeleccionado);

$autores = new Escritor();
$editoriales = new Editorial();

$portadaGrande = null;
$numero = null;
$id = null;

if (isset($_GET['volumen'])) {
    $volumenNumeroPortada = $coleccion->traer_portada_x_volumen($mangaSeleccionado, $volumenSeleccionado);
    if ($volumenNumeroPortada) {
        $numero = strval($volumenNumeroPortada['numero']);
        $portadaGrande = strval($volumenNumeroPortada['portada_grande']);
        $id = $volumenNumeroPortada['id'];
    }
}
?>

<section class="container mw-100">
    <h1 class="text-center m-5">Estás leyendo <span style="color: #028171;"><?= $mangas->getTitulo() ?></span></h1>
    <div class="d-flex flex-column flex-md-row justify-content-center gap-5">
        <div class="d-flex justify-content-center justify-content-md-end">
            <img class="rounded-start" src="<?php
                                            if (!isset($_GET['volumen'])) {
                                                echo $mangas->getPortada();
                                            } else if (isset($_GET['volumen'])) {
                                                echo $portadaGrande;
                                            }
                                            ?>" height="420" alt="Portada del volumen número <?php if (!isset($_GET['volumen'])) {
                                                                                                    echo "1";
                                                                                                } else if (isset($_GET['volumen'])) {
                                                                                                    echo $numero;
                                                                                                } ?> del manga <?= $mangas->getTitulo() ?>">
        </div>
        <div class="d-flex flex-column justify-content-md-start align-items-center align-items-md-start">
            <h3>
                <?= $mangas->getTitulo() ?><span> N°<?php
                                                    if (!isset($_GET['volumen'])) {
                                                        echo "1";
                                                    } else if (isset($_GET['volumen'])) {
                                                        echo $numero;
                                                    } ?></span>
            </h3>
            <p class="d-block my-2">
                Año de estreno:
                <b><?= $mangas->getEstreno() ?></b>
            </p>
            <p class="d-block my-2">
                Editorial:
                <b><?= $editoriales->traer_nombre_editorial($mangas->getEditorialId()) ?></b>
            </p>
            <p class="d-block my-2">
                Escritor:
                <b><?= $autores->traer_nombre_escritor($mangas->getEscritorId()) ?></b>
            </p>
            <p class="genero px-2 mt-2 mb-4">
                <?php
                if ($mangas->getGenero() == 'accion') {
                    echo '<a href="index.php?seccion=catalogo&genero=accion" class="text-decoration-none text-light">Acción</a>';
                } else if ($mangas->getGenero() == 'deportes') {
                    echo '<a href="index.php?seccion=catalogo&genero=deportes" class="text-decoration-none text-light">Deportes</a>';
                } else if ($mangas->getGenero() == 'musical') {
                    echo '<a href="index.php?seccion=catalogo&genero=musical" class="text-decoration-none text-light">Musical</a>';
                } else if ($mangas->getGenero() == 'romance') {
                    echo '<a href="index.php?seccion=catalogo&genero=romance" class="text-decoration-none text-light">Romance</a>';
                } else {
                    null;
                }
                ?>
            </p>
            <p>
                $<?= $mangas->getPrecio() ?><span class="d-block text-secondary">(+IVA 21%)</span>
            </p>
            <p class="fs-5">
                <?php $total = $mangas->getPrecio() * 1.21; ?>
                Total: <b class="d-block">$<?= number_format($total, 2, ",", ".") ?></b>
            </p>
            <form action="admin/actions/add_item_carrito.php" method="GET" class="mt-3 row">
                <div class="d-flex justify-content-center justify-content-md-start gap-2">
                    <div class="d-flex col-4 btnCantidad border-0 text-light ps-2 align-items-center">
                        <label for="cantidad">Cant:</label>
                        <input type="number" max="20" min="1" value="1" name="cantidad" id="cantidad" class="text-light text-center bg-transparent border-0 text-center align-middle form-control border-0 pe-1">
                    </div>
                    <div class="d-flex col-6 btnComprar border-0 text-light justify-content-center">
                        <input type="submit" value="Agregar al carrito" class="text-light bg-transparent border-0 text-center">
                        <input type="hidden" value="<?= $id ?>" name="id" id="id">
                    </div>
                </div>
            </form>


        </div>
    </div>
    <div class="w-75 my-5 mx-auto">
        <p><?= $mangas->getBajada() ?></p>
    </div>
    <div class="w-75 mx-auto">
        <div class="text-center">
            <img src="images/iconos/seguridad.png" alt="Ícono seguridad">
        </div>
        <h4 class="d-block text-center mb-5 fs-3">Disfrutá más de <span style="color: #028171"><?= $mangas->getTitulo() ?></span></h4>

        <div class="d-flex flex-column flex-md-row justify-content-center flex-wrap gap-4 my-2 p-2 rounded">
            <?php foreach ($volumenes as $volumen) { ?>
                <a class="text-decoration-none text-light m-2" href="?id=<?= $_GET['id'] ?>&volumen=<?= $volumen->getNumero() ?>"><img class="d-none d-md-inline bg-light" style="padding: 2px; outline: 10px solid #00594d; object-fit: cover;" height="167" width="114" src="<?= $volumen->getPortadaChica() ?>" alt="Portada de <?= $mangas->getTitulo() ?>">
                    <div class="d-flex d-md-none border-bottom border-light px-4 pb-3 justify-content-between">
                        <strong class="fs-5">
                            <?= $mangas->getTitulo() ?> #<span><?= $volumen->getNumero() ?></span>
                        </strong>
                        <img style="object-fit: contain;" src="./images/iconos/link.png" alt="Abrir en una nueva pestaña">
                    </div>
                </a>
            <?php } ?>
        </div>
    </div>
</section>