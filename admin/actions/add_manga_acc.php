<?php
require_once "../../functions/autoload.php";

$manga = $_POST;

try {
    (new Manga())->insert($manga["titulo"], $manga["genero"], $manga["portada"], $manga["escritor_id"], $manga["editorial_id"], $manga["estreno"], $manga["bajada"], $manga["precio"]);
    header("Location: ../index.php?seccion=add_volumen");
} catch (Exception $e) {
    die ("No se pudo cargar el manga");
}
