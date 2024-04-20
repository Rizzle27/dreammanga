<?php
require_once "../../functions/autoload.php";

$manga = $_POST;
$id = $_GET['id'] ?? FALSE;

try {
    (new Manga())->delete($id);

    // El header sirve para redireccionar
    header("Location: ../index.php?seccion=admin_mangas");
} catch(Exception $e) {
    die ("No se pudo eliminar el manga");
}