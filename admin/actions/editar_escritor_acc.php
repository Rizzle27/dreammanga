<?php
require_once "../../functions/autoload.php";

$escritor = $_POST;
$id = $_GET['id'] ?? FALSE;

try {
    (new Escritor())->edit($id, $escritor["nombre"], $escritor["biografia"]);

    // El header sirve para redireccionar
    header("Location: ../index.php?seccion=admin_escritores");
} catch(Exception $e) {
    die ("No se pudo editar el escritor");
}