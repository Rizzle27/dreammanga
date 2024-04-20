<?php
require_once "../../functions/autoload.php";

try {
    (new Carrito())->clear_items();
    header('location: ../../index.php?seccion=carrito');
} catch (Exception $e) {
    die('No se pudo vaciar el carrito');
}
