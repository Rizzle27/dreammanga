<?php
require_once "../../functions/autoload.php";

$postData = $_POST;

$datosUsuario = (new Usuario())->usuario_x_username($postData["nombreUsuario"]);


if ($datosUsuario) {
    if (password_verify($postData["contraseña"], $datosUsuario->getContraseña())) {
        $_SESSION['login'] = [
            'id' => $datosUsuario->getId(),
            'nombre' => $datosUsuario->getNombreUsuario(),
            'rol' => $datosUsuario->getRol(),
        ];
        if ($datosUsuario->getRol() == "admin") {
            header("location: ../index.php?seccion=dashboard");
        } else header("location: ../../index.php");
    }
} else {
    header('Location: ../../index.php?seccion=pass_incorrecta');
}
