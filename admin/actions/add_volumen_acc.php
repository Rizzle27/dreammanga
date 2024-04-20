<?php
require_once "../../functions/autoload.php";

$volumen = $_POST;

try {
    (new Volumen())->insert($volumen["numero"], $volumen["manga_id"],  $volumen["portada_chica"], $volumen["portada_grande"]);
    header("Location: ../index.php?seccion=add_volumen");
} catch (Exception $e) {
    die ("No se pudo cargar el volumen");
}