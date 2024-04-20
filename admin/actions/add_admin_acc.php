<?php
require_once "../../functions/autoload.php";

$usuario = $_POST;
$rol = "admin";

try {
    (new Usuario())->setAdmin($usuario["nombreUsuario"], $rol);
    header("Location: ../index.php?seccion=admin_administradores");
} catch (Exception $e) {
    print_r($usuario);
    die ("No se pudo cambiar el rol de este usuario");
}