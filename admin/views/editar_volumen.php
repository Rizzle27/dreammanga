<?php
$volumenSeleccionado = $_GET['id'];

$volumenes = (new Volumen())->traer_volumen_x_id($volumenSeleccionado);

$mangas =  (new Manga())->traer_catalogo_completo();
?>

<div class="row my-5 mx-1">
    <div class="col m-auto">
        <h1 class="text-center mb-5 fw-bold">Editar <span style="color: #028171;">Volumen</span></h1>
        <div class="m-auto col-10 col-md-8 col-lg-6 col-xl-4">
            <form action="actions/editar_volumen_acc.php?id=<?= $volumenSeleccionado ?>" method="POST">
                <?php foreach ($volumenes as $volumen) { ?>
                    <div class="mb-3">
                        <label for="numero" class="form-label">Número</label>
                        <input type="text" class="form-control" id="numero" name="numero" placeholder="Número de volumen" value="<?= $volumen->getNumero() ?>">
                    </div>
                    <div class="mb-3">
                        <label for="manga_id" class="form-label">Manga</label>
                        <select id="manga_id" class="form-control" name="manga_id" required>
                            <option value="" disabled selected>Seleccione un manga</option>
                            <?php foreach ($mangas as $manga) { ?>
                                <option value="<?= $manga->getId() ?>"><?= $manga->getTitulo() ?></option>
                            <?php } ?>
                        </select>
                    </div>
                    <div class="mb-3">
                        <label for="portada_chica" class="form-label">Portada chica</label>
                        <textarea class="form-control" id="portada_chica" name="portada_chica" placeholder="Link de la portada chica del manga"><?= $volumen->getPortadaChica() ?></textarea>
                    </div>
                    <div class="mb-3">
                        <label for="portada_grande" class="form-label">Portada grande</label>
                        <textarea class="form-control" id="portada_grande" name="portada_grande" placeholder="Link de la portada grande del manga"><?= $volumen->getPortadaGrande() ?></textarea>
                    </div>
                    <div class="d-flex justify-content-end">
                        <button type="submit" id="btn-admin" class="btn text-light w-100" style="background-color: #028171;">Editar</button>
                    </div>
                <?php } ?>
            </form>
        </div>
    </div>
</div>