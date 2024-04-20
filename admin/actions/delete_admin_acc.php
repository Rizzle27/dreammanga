<?php
require_once "../../functions/autoload.php";

$id = $_GET["id"];
$rol = "usuario";

try {
    (new Usuario())->setUsuario($id, $rol);
    header("Location: ../index.php?seccion=admin_administradores");
    // No funciona, la sesión no cierra y el usuario sin admin puede acceder a las secciones de administrador mientras no cierre su sesión
    // if($_SESSION["login"]["rol"] == "admin") {
    // } else {
    //     unset($_SESSION["login"]);
    // }
} catch (Exception $e) {
    print_r($usuario);
    die ("No se pudo cambiar el rol de este usuario");
}