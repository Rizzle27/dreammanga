<?php
require_once "../../functions/autoload.php";

if (isset($_POST["enviar"])) {
    $usuario_id = $_POST["usuario_id"];
    $usuario_nombre = $_POST["usuario_nombre"];
    $usuario_apellido = $_POST["usuario_apellido"];
    $usuario_mail = $_POST["usuario_mail"];
    $usuario_provincia = $_POST["usuario_provincia"];
    $usuario_ciudad = $_POST["usuario_ciudad"];
    $usuario_calle = $_POST["usuario_calle"];
    $usuario_cpa = $_POST["usuario_cpa"];
    $mangas = $_POST["manga"];
    $volumenes = $_POST["volumen"];
    $cantidades = $_POST["cantidad"];

    for ($i = 0; $i < count($mangas); $i++) {
        $manga = $mangas[$i];
        $volumen = $volumenes[$i];
        $cantidad = $cantidades[$i];

        try {
            (new Compra())->insert($usuario_id, $usuario_nombre, $usuario_apellido, $usuario_mail, $usuario_provincia, $usuario_ciudad, $usuario_calle, $usuario_cpa, $manga, $volumen, $cantidad);
        } catch (Exception $e) {
            die("No se pudo guardar la compra");
        }
    }

    (new Carrito())->clear_items();

    header("Location: ../../index.php?seccion=gracias");
}
?>
