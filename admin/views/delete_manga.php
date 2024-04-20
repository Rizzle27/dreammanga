<?php
require_once "../functions/autoload.php";

$mangaSeleccionado = $_GET['id'];
?>

<form action="actions/delete_manga_acc.php?id=<?= $mangaSeleccionado ?>" method="POST">
    <div class="d-flex justify-content-end">
        <button type="submit" class="btn text-light fs-1 w-100 bg-danger">Eliminar</button>
    </div>
</form>