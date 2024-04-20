<?php
require_once "../functions/autoload.php";

$volumenSeleccionado = $_GET['id'];
?>

<form action="actions/delete_volumen_acc.php?id=<?= $volumenSeleccionado ?>" method="POST">
    <div class="d-flex justify-content-end">
        <button type="submit" class="btn text-light fs-1 w-100 bg-danger">Eliminar</button>
    </div>
</form>