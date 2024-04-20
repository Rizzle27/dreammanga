<?php
require_once "../../functions/autoload.php";

$manga = $_POST;
$id = $_GET['id'] ?? FALSE;

try {
    (new Manga())->edit($id, $manga["titulo"], $manga["genero"], $manga["portada"], $manga["escritor_id"], $manga["editorial_id"], $manga["estreno"], $manga["bajada"], $manga["precio"]);

    // El header sirve para redireccionar
    header("Location: ../index.php?seccion=admin_mangas");
} catch(Exception $e) {
    die ("No se pudo editar el manga");
}