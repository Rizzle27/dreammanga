<?php
require_once "../functions/autoload.php";

$adminSeleccionado = $_GET['id'];
?>

<form action="actions/delete_admin_acc.php?id=<?= $adminSeleccionado ?>" method="POST">
    <div class="d-flex justify-content-end">
        <button type="submit" class="btn text-light fs-1 w-100 bg-danger">Quitar Administrador</button>
    </div>
</form>