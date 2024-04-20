<?php
require_once "functions/autoload.php";

$catalogo = new Manga();
$mangas = $catalogo->traer_catalogo_completo();

$autores = new Escritor();
$escritores = $autores->traer_escritor_completo();

$editores = new Editorial();
$editoriales = $editores->traer_editorial_completa();

if (isset($_GET['editorial'])) {
    $editorialFiltro = $_GET['editorial'];
} else {
    $editorialFiltro = "";
}

?>

<section class="container mw-100">
    <?php if (!isset($_GET['seccion'])) {
        print('<h2 class="text-center my-5">¡Disfrutá de nuestras <span style="color: #028171;">recomendaciones</span>!</h2>');
    } else if ($_GET['seccion'] == 'catalogo' && (isset($_GET['genero']) && $_GET['genero'] == 'catalogo')) {
        print('
        <h2 class="text-center my-5">¡Disfrutá de nuestro <span style="color: #028171;">catálogo completo</span>!</h2>
        <div class="m-auto text-center">
            <img src="images/iconos/explorar.png" alt="Ícono explorar">
        </div>
        <p class="text-center col-8 m-auto">Explorá nuestro <span style="color: #028171;">catálogo completo</span> con más de 500 títulos que incluyen una gran variedad de géneros, entre ellos Acción, Romance, Deportes y mucho más.</p>
        ');
    ?>

        <div class="d-flex justify-content-center mt-3">
            <form method="get" class="d-flex align-items-center">
                <div class="input-group me-2">
                    <label class="input-group-text" for="editorial">Filtrar por editorial:</label>
                    <select class="form-select" name="editorial" id="editorial">
                        <option value="">Todas las editoriales</option>
                        <?php foreach ($editoriales as $editorial) { ?>
                            <option value="<?php echo $editorial->getId(); ?>" <?php echo ($editorialFiltro == $editorial->getId()) ? 'selected' : ''; ?>><?php echo $editorial->getNombre(); ?></option>
                        <?php } ?>
                    </select>
                </div>
                <input class="form-control d-none" type="hidden" name="seccion" value="catalogo">
                <button class="btn text-light" type="submit" style="background-color: #028171;">Filtrar</button>
            </form>
        </div>

    <?php

    } else if (isset($_GET['seccion']) && isset($_GET['genero'])) {
        if ($_GET['genero'] == 'accion') {
            print('<h2 class="text-center my-5">¡Disfrutá de nuestra sección <span style="color: #028171;">Acción</span>!</h2>');
        } else if ($_GET['genero'] == 'deportes') {
            print('<h2 class="text-center my-5">¡Disfrutá de nuestra sección <span style="color: #028171;">Deportes</span>!</h2>');
        } else if ($_GET['genero'] == 'musical') {
            print('<h2 class="text-center my-5">¡Disfrutá de nuestra sección <span style="color: #028171;">Musical</span>!</h2>');
        } else if ($_GET['genero'] == 'romance') {
            print('<h2 class="text-center my-5">¡Disfrutá de nuestra sección <span style="color: #028171;">Romance</span>!</h2>');
        }
    } else if (isset($_GET['editorial'])) {
        print('<h2 id="editorialTitulo" class="text-center my-5">¡Disfrutá de lo mejor de <span style="color: #028171;">' . (new Editorial())->traer_nombre_editorial($_GET["editorial"]) . '</span>!</h2>');
    } ?>

    <div class="row justify-content-center">
        <?php
        $mostrado = false;
        foreach ($mangas as $manga) {
            $cumpleFiltroGenero = !isset($_GET['genero']) || $_GET['genero'] === 'catalogo' || $_GET['genero'] === $manga->getGenero();
            $cumpleFiltroEditorial = empty($editorialFiltro) || $editorialFiltro == $manga->getEditorialId();

            if ($cumpleFiltroGenero && $cumpleFiltroEditorial) {
                if (!$mostrado) {
                    $mostrado = true;
                }
                require "card.php";
            }
        }

        if (!$mostrado) { ?>
            <div class="text-center mt-3">
                <h2 class="mb-5">¡No se encontraron resultados para <span style="color: #00A78C;"><?= (new Editorial())->traer_nombre_editorial($_GET["editorial"]) ?></span></h2>
                <h3 class="mb-5">Probá agregando un producto al carrito</h3>
                <div class="mt-5">
                    <img src="images/iconos/entendido.png" alt="Ícono entendido">
                </div>
                <a class="volver text-decoration-none" href="index.php?seccion=catalogo&genero=catalogo">Volver al catálogo</a>
            </div>
        <?php } ?>
    </div>
</section>