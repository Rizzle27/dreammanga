<?php
$autores = new Escritor();
$escritores = $autores->traer_escritor_completo();

$editores = new Editorial();
$editoriales = $editores->traer_editorial_completa();

$mangaSeleccionado = $_GET['id'];

$mangas = (new Manga())->traer_manga_x_id($mangaSeleccionado);
?>

<div class="row my-5 mx-1">
    <div class="col m-auto">
        <h1 class="text-center mb-5 fw-bold">Editar <span style="color: #028171;">Manga</span></h1>
        <div class="m-auto col-10 col-md-8 col-lg-6">
            <form action="actions/editar_manga_acc.php?id=<?= $mangaSeleccionado ?>" method="POST">
                <?php foreach ($mangas as $manga) { ?>
                    <div class="d-flex justify-content-between mb-3">
                        <div class="col-8 px-2">
                            <label for="titulo" class="form-label">Título</label>
                            <input type="text" class="form-control" id="titulo" name="titulo" placeholder="Título del manga" value="<?= $manga->getTitulo() ?>">
                        </div>
                        <div class="col-4 px-2">
                            <label for="genero" class="form-label">Género</label>
                            <select id="genero" class="form-control" name="genero">
                                <option value="<?= $manga->getGenero() ?>" selected><?= ucfirst($manga->getGenero()) ?></option>
                                <option value="accion">Acción</option>
                                <option value="deportes">Deportes</option>
                                <option value="musical">Musical</option>
                                <option value="romance">Romance</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-12 px-2 mb-3">
                        <label for="portada" class="form-label">Portada</label>
                        <textarea class="form-control" id="portada" name="portada" placeholder="Link de la portada grande del manga"><?= $manga->getPortada() ?></textarea>
                    </div>
                    <div class="d-flex justify-content-between mb-3">
                        <div class="col-4 px-2">
                            <label for="escritor_id" class="form-label">Escritor</label>
                            <select id="escritor_id" class="form-control" name="escritor_id">

                                <option value="<?= $manga->getEscritorId() ?>" selected>Seleccione un escritor</option>

                                <?php foreach ($escritores as $escritor) { ?>
                                    <option value="<?= $escritor->getId() ?>"><?= $escritor->getNombre() ?></option>
                                <?php } ?>
                            </select>
                        </div>
                        <div class="col-4 px-2">
                            <label for="editorial_id" class="form-label">Editorial</label>
                            <select id="editorial_id" class="form-control" name="editorial_id">

                                <option value="<?= $manga->getEditorialId() ?>" selected>Seleccione una editorial</option>

                                <?php foreach ($editoriales as $editorial) { ?>
                                    <option value="<?= $editorial->getId() ?>"><?= $editorial->getNombre() ?></option>
                                <?php } ?>
                            </select>
                        </div>
                        <div class="col-4 px-2">
                            <label for="estreno" class="form-label">Estreno</label>
                            <input type="number" name="estreno" class="form-control" id="estreno" min="1800" max="9999" placeholder="Año de estreno - (min 1900)" value="<?= $manga->getEstreno() ?>">
                        </div>
                    </div>
                    <div class="mb-3 px-2">
                        <label for="bajada" class="form-label">Bajada</label>
                        <textarea name="bajada" class="form-control" id="bajada" rows="4" placeholder="Bajada del manga"><?= $manga->getBajada() ?></textarea>
                    </div>
                    <div class="mb-3 px-2">
                        <label for="precio" class="form-label">Precio</label>
                        <input id="precioCracter" type="number" name="precio" class="form-control" min="1800" max="999999" placeholder="Precio del manga - (formato: ($)0000.00)" value="<?= $manga->getPrecio() ?>">
                    </div>
                    <div class="d-flex justify-content-end px-2">
                        <button type="submit" id="btn-admin" class="btn text-light w-100" style="background-color: #028171;">Editar</button>
                    </div>
                <?php } ?>
            </form>
        </div>
    </div>
</div>