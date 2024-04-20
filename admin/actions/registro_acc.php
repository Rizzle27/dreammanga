<?php
require_once "../../functions/autoload.php";

$usuario = $_POST;

try {
    (new Usuario())->registrar_usuario($usuario["email"], $usuario["nombreUsuario"], $usuario["nombreCompleto"], $usuario["contraseña"]);
    // header("Location: ../../index.php");
} catch (Exception $e) {
    print_r($usuario);
    die ("No se pudo registrar este usuario");
}

?>