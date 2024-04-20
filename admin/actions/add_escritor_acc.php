<?php
require_once "../../functions/autoload.php";

$escritor = $_POST;

try {
    (new Escritor())->insert($escritor["nombre"], $escritor["biografia"]);
    header("Location: ../index.php?seccion=admin_escritores");
} catch (Exception $e) {
    die("No se pudo cargar el escritor");
}
