<?php
require_once "../../functions/autoload.php";

$volumen = $_POST;
$id = $_GET['id'] ?? FALSE;

try {
    (new Volumen())->edit($id, $volumen["numero"], $volumen["manga_id"], $volumen["portada_chica"], $volumen["portada_grande"]);

    // El header sirve para redireccionar
    header("Location: ../index.php?seccion=admin_mangas");
} catch(Exception $e) {
    die ("No se pudo editar el volumen");
}