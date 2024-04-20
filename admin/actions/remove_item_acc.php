<?php
require_once "../../functions/autoload.php";
$id = $_GET["id"];

try {
    if($id){
        (new Carrito())->borrar_item($id);
        header('location: ../../index.php?seccion=carrito');
    }
} catch (Exception $e) {
    die ("No se pudo eliminar el item del carrito");
}

