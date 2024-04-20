<?php
require_once "../../functions/autoload.php";

$id = $_GET['id'] ?? FALSE;

try {
    if($id) {
        (new Carrito())->add_item($id, 1);
        header("Location: ../../index.php?seccion=carrito");
    }
} catch (Exception $e) {
    die ("No se pudo agregar el item al carrito");
}
